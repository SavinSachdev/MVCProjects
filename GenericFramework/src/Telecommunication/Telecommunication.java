package Telecommunication;

import java.io.IOException;

import generic.RoverThreadHandler;

public class Telecommunication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Telecommunication_Server ps=null;
		try {
			ps = new Telecommunication_Server(9002);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread serverPower=RoverThreadHandler.getRoverThreadHandler().getNewThread(ps);
		serverPower.start();
	}

}
