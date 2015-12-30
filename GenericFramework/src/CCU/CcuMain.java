package CCU;

import java.io.IOException;
import java.net.UnknownHostException;

import generic.RoverThreadHandler;

public class CcuMain {
		
	public static void main(String[] args) {
		int ccuport=9009;
		ComputerCommand_Server ccuserver=null;
		try {
			ccuserver = new ComputerCommand_Server(ccuport);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread serverccu=RoverThreadHandler.getRoverThreadHandler().getNewThread(ccuserver);
		serverccu.start();
		
		
	}
}