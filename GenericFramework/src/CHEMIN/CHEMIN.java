package CHEMIN;

import generic.RoverThreadHandler;

import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Base64;

import javafx.embed.swing.JFXPanel;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;

import javax.imageio.ImageIO;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;



public class CHEMIN {
	private Thread t = null;
	
	boolean CHEMIN_Process() throws InterruptedException, IOException{
		t=Thread.currentThread();
		System.out.println("CHEMIN PROCESS STARTED NOW:");
		t.sleep(2000);
		if(CMIN_RemoveFunnelContamination()){
			System.out.println("\t\tCryo Cooler On");
			t.sleep(5000);
			System.out.println("\t\t\tRemoving Funnel contamination");
			t.sleep(2000);
			if(CMIN_CheckCHIMRA()){
				
				if(CMIN_RemoveSampleCellContamination()){
					System.out.println("\t\t\t\t\t\tCleaning Sample cell ");
					t.sleep(2000);
					if(CMIN_FunnelPiezoOn()){
						System.out.println("\t\t\t\t\t\tFunnel piezo is on now");
							playMusic();
						System.out.println("\t\t\t\t\t\t\t\tWait for 5 seconds:for sample to go in sample cell");
						t.sleep(5000);
						System.out.println("\t\t\t\t\t\t\t\t\t\tSample is in sample cell now");
						
						CMIN_SamlecellPiezoOn();
						playMusic();
						System.out.println("\t\t\t\t\t\t\t\t\t\t\t\tSample cell piezo Started");
						CMIN_XrayOn();
						System.out.println("\t\t\t\t\t\t\t\t\t\t\t\t\t\tXrays are on now");
						t.sleep(10000);
						for(int i=0;i<4;i++){
							System.out.println("Reading CCD Image");
						CMIN_ReadCCD();  //each 30 seconds and compress
						    System.out.println("Creating json file for image and sending it for compression To Rover Compute Element(RCE)");
							CMIN_CreateXRDJson();
							CHEMIN_Client teleclient=new CHEMIN_Client(9002,null);
							Thread telecommunication=RoverThreadHandler.getRoverThreadHandler().getNewThread(teleclient);
							telecommunication.start();
							t.sleep(3000);
						}{
							CHEMIN_POWER_OFF();
							return true;
						}
					}
				}else{
					System.out.println("Sample cell is not clean");
					return false;
				}
			}else{
				System.out.println("No sample with CHIMRA");
				return false;
			}
		}else{
			System.out.println("Contamination not removed yet!! Remove Contamination first");
			return false;
		}
		
			return true;
		
		
		
	}

	public void CHEMIN_POWER_OFF() {
		
	//	t.interrupt();
		
		System.out.println(" Cryo Cooler off !");
		CMIN_FunnelPiezoOff();
		System.out.println("Funnel Piezo off !");
		CMIN_SamlecellPiezoOff();
		System.out.println("SamplePiezo off !");
		CMIN_XrayOff();
		System.out.println("Xray off!");
	}

	public boolean CMIN_RemoveFunnelContamination(){
		return true;
	}
	
	public boolean CMIN_RemoveSampleCellContamination(){   //for dilution
		return true;
	}
	boolean CMIN_CheckCHIMRA(){
		return true;
	}
	
	public boolean CMIN_FunnelPiezoOn() {
		
			//mediaPlayer = playMusic();
	
		
		
		return true;
	}
	public boolean CMIN_FunnelPiezoOff(){
		//mediaPlayer.stop();
		return true;
	}
	
	public boolean CMIN_SamlecellPiezoOn(){
		//MediaPlayer mediaPlayer = null;
		
		//	mediaPlayer = playMusic();
	
		
		
		return true;
	}

	public boolean CMIN_SamlecellPiezoOff(){
		//mediaPlayer.stop();
		return true;
	}
	public boolean CMIN_XrayOn(){
		return true;
	}
	public boolean CMIN_XrayOff(){
		return true;
	}
	public boolean CMIN_ReadCCD(){
		return true;
	}
	public void CMIN_CreateXRDJson() throws IOException{
		JSONObject jsonObject = createJsonFromImage();

		File file = new File("XrdDiffraction.json");

		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(jsonObject.toString());
		bw.close();
		
		
		
	}
	
private  MediaPlayer playMusic() {
		
		new JFXPanel();
		String bip = "Somebody.mp3";
		Media hit = new Media(new File(bip).toURI().toString());
		MediaPlayer mediaPlayer = new MediaPlayer(hit);
		mediaPlayer.play();
		
		return mediaPlayer;
	}
	
private JSONObject createJsonFromImage() throws IOException {
		
		String encodedImage = getStringFromImage();

		JSONObject jsonObj = (JSONObject) JSONValue.parse("{\"image\":\"" + encodedImage + "\"}");
		return jsonObj;
	}

	private static String getStringFromImage() throws IOException {
		
		BufferedImage originalImage = ImageIO.read(new File("xrayDiffraction.jpg"));
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ImageIO.write( originalImage, "jpg", baos );
		baos.flush();
	
		byte[] imageInByte = baos.toByteArray();
		baos.close();
		
		String encoded = Base64.getEncoder().encodeToString(imageInByte);
		return encoded;
	}
	}