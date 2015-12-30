package Telecommunication;

import generic.RoverServerRunnable;
import generic.RoverThreadHandler;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import json.Constants;
import json.MyWriter;

public class Telecommunication_Server extends RoverServerRunnable {

	public Telecommunication_Server(int port) throws IOException {
		super(port);
	}

	@Override
	public void run() {
		while(true)
		try {
			 
				
				System.out.println("Telecommunication server: Waiting for client request");
				getRoverServerSocket().openSocket();
				ObjectInputStream oinstr=new ObjectInputStream(getRoverServerSocket().getSocket().getInputStream());
				String message=oinstr.readObject().toString();
				System.out.println(message);
				Telecommunication_Client teleclient=new Telecommunication_Client(9008, null);
				Thread cpower=RoverThreadHandler.getRoverThreadHandler().getNewThread(teleclient);
				cpower.start();
		
		}catch(IOException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}