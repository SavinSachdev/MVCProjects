package POWER;

import java.io.IOException;

import generic.RoverThreadHandler;

public class PowerMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Power_Server ps=null;
		try {
			ps = new Power_Server(9013);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread serverPower=RoverThreadHandler.getRoverThreadHandler().getNewThread(ps);
		serverPower.start();
	}

}
