package CHEMIN;

import generic.RoverThreadHandler;

import java.io.IOException;

import POWER.Power_Server;
import Telecommunication.Telecommunication_Server;

public class CHEMIN_Main {

	public static void main(String[] args) {
		
		
		int port_chemin = 9008;
		
		try {
			
			// create a thread for CHEMIN SERVER one
			CHEMIN_Server serverChemin = new CHEMIN_Server(port_chemin);
			Thread server_chemin = RoverThreadHandler.getRoverThreadHandler().getNewThread(serverChemin);
			server_chemin.start();
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Power_Server ps=null;
		try {
			ps = new Power_Server(9013);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread serverPower=RoverThreadHandler.getRoverThreadHandler().getNewThread(ps);
		serverPower.start();
	
		Telecommunication_Server ts=null;
		try {
			ts = new Telecommunication_Server(9002);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread servertele=RoverThreadHandler.getRoverThreadHandler().getNewThread(ts);
		servertele.start();
	}
	}

