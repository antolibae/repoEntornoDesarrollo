package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class Test {

	public static void main(String[] args) {
		connect();
	}
	
	public static void connect() {
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "animales");
			
			if(con!=null) {
				System.out.println("Chido");
			}else {
				System.out.println("No chido");
			}
		}catch(Exception e){
			System.out.println("ERROR: " + e);
		}
	}

}
