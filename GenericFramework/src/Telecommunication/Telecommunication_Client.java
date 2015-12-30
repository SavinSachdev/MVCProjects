package Telecommunication;

import generic.RoverClientRunnable;

import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;

import json.Constants;
import json.GlobalReader;

import org.json.simple.JSONObject;

public class Telecommunication_Client extends RoverClientRunnable{
	
	public Telecommunication_Client(int port, InetAddress host)
			throws UnknownHostException {
		super(port, host);
	}

	@Override
	public void run() {
		try{
			
			if(getRoverSocket().getSocket().getPort()==9008){
				ObjectOutputStream outstr=new ObjectOutputStream(getRoverSocket().getSocket().getOutputStream());
				outstr.writeObject("From Telecommunication:Telecommunication has received file successfully");
				}

		   }	        
        catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
