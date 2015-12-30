package CHEMIN;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class Dummyclient extends JFrame{
	JTextField portno;
	JTextField message;
	Dummyclient(){
		JPanel blank=new JPanel();
		JPanel p1=new JPanel();
		p1.setLayout(new GridLayout(1,2));
		JLabel port=new JLabel("Enter your port number");
		p1.add(port);
		portno=new JTextField();
		p1.add(portno);
		JPanel p2=new JPanel();
		p2.setLayout(new GridLayout(1,2));
		JLabel mesage=new JLabel("Message");
		p2.add(mesage);
		message=new JTextField();
		p2.add(message);
		JPanel p3=new JPanel();
		p3.setLayout(new GridLayout(2,2));
		p3.add(p1);
		p3.add(p2);
		add(blank,BorderLayout.NORTH);
		add(p3,BorderLayout.CENTER);
		JButton submit=new JButton("Send Command");
		submit.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				String port=portno.getText();
				String msg=message.getText();
				Socket socket=null;
				try {
					socket = new Socket("localhost",Integer.parseInt(port));
				} catch (IOException ex) {
					// TODO Auto-generated catch block
					ex.printStackTrace();
				}
				ObjectOutputStream outstr=null;
				try {
					outstr = new ObjectOutputStream(socket.getOutputStream());
				} catch (IOException ey) {
					// TODO Auto-generated catch block
					ey.printStackTrace();
				}
				try {
					outstr.writeObject(msg);
				} catch (IOException ez) {
					// TODO Auto-generated catch block
					ez.printStackTrace();
				}
			}});
		add(submit,BorderLayout.SOUTH);
		}
		
	

	public static void main(String[] args) {
	JFrame frame=new Dummyclient();	
	frame.setLocationRelativeTo(null);
	frame.setVisible(true);
	frame.setSize(600,140);
	//frame.pack();
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	return;
	}
}
