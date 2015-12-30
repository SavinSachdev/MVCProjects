package CCU;

/*	
 * Created by: 	Jonathan Young
 * Date: 		May 14, 2015
 */

import generic.RoverServerRunnable;
import generic.RoverThreadHandler;

import java.io.IOException;
import java.net.ServerSocket;

public class ComputerCommand_Server extends RoverServerRunnable {

	public ComputerCommand_Server(int port) throws IOException {
		super(port);
	}

	@Override
	public void run() {
		
		while(true){
		try {
				System.out.println("CCU--> trying to turn on CHEMIN");
				//creating socket and waiting for client connection
			
				ComputerCommand_Client ccuserver=new ComputerCommand_Client(9008,null);
				Thread cheminclient=RoverThreadHandler.getRoverThreadHandler().getNewThread(ccuserver);
				cheminclient.start();
				getRoverServerSocket().openSocket();
				
			
		}catch(Exception e){
			e.printStackTrace();
		}
		}
	}
}