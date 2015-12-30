package CHEMIN;

/*	
 * Created by: 	Jonathan Young
 * Date: 		May 14, 2015
 */

import generic.RoverServerRunnable;
import generic.RoverThreadHandler;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import json.Constants;
import json.GlobalReader;
import json.MyWriter;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class CHEMIN_Server extends RoverServerRunnable {

	private static boolean ccuYes = false;
	
	public CHEMIN_Server(int port) throws IOException {
		super(port);
	}

	@Override
	public void run() {
		
		try {
			
			while (true) {
				
				System.out.println("CHEMIN Server: Waiting for client request");
				
				// creating socket and waiting for client connection or for CCU
				getRoverServerSocket().openSocket();
				
				// read from socket to ObjectInputStream object
				ObjectInputStream inputFromAnotherObject = new ObjectInputStream(getRoverServerSocket().getSocket().getInputStream());
				
				// convert ObjectInputStream object to String
				String message=inputFromAnotherObject.readObject().toString();
				//reading JSOn from CCU
				/*if(message.contains("CHEMIN_TURN_ON")){
					yesfromccu=true;
				//writing json to disk drive collected from ccu.
				MyWriter jsonwrite=new MyWriter(message,Constants.ROOT_PATH+"readonlyjson");
				ObjectOutputStream ostr=new ObjectOutputStream(getRoverServerSocket().getSocket().getOutputStream());
				ostr.writeObject("CHEMIN --> Successfull file received !!");
				JSONParser parser=new JSONParser();
				Object obj=parser.parse(message);
				JSONObject ob=(JSONObject) obj;
				if(ob.containsKey("CHEMIN_TURN_ON")){
					System.out.println("I got yes from CCU and turning on the instrument now");
				}
				}*/
				Thread t=Thread.currentThread();
				t.sleep(3000);
				System.out.println("Message Received is: "+message);
				if(t.isInterrupted()){
					message = "power off";
				}
				
				switch(message.toLowerCase()){
				case "chemin on":
					ccuYes = true;
					System.out.println("CCU has send request to CHEMIN to turn on");
					System.out.println("CHEMIN is requesting power and Sending a json file with power Requirements to Power group");
					CHEMIN_Client client=new CHEMIN_Client(9013,null);
					Thread power=RoverThreadHandler.getRoverThreadHandler().getNewThread(client);
					power.start();
					break;
				
				case "power on":
					
					boolean process = false;
					if(ccuYes){
						CHEMIN chemin = new CHEMIN();
						process=chemin.CHEMIN_Process();
					}else{
						System.out.println(" CHEMIN dont have permission from CCU ,Yet !");
					}
						break;
			case "power off":
					System.out.println(" deleting thread ..");
					new CHEMIN().CHEMIN_POWER_OFF();
					break;
				}
				// close resources
				inputFromAnotherObject.close();
				}
				
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception error) {
			System.out.println("Server: Error: " + error.getMessage());
		}

	}

}