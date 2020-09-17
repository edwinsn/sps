package util.citas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import usuarioBase.datos;

public class conexiónCitas {
	static  String duser = datos.user;
	static  String dpas = datos.pass;

	public static void main(String arg[]) {
		registrarCita("Hora","doctor","ramireztovarkaren@gmail.com");
		registrarCita("Hora","doctor","email");

	}
	
	
	private static Connection conexión() {
	
		Connection con=null;
		   try {
			   Class.forName("com.mysql.jdbc.Driver");
			      
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		}

		      try {
				con = DriverManager.getConnection("jdbc:mysql://localhost", duser, dpas);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return con;
	};
	private static Connection conexiónCita() {
		
		   Connection con = null;
		   java.sql.Statement stmt = null;
			
		   con=conexión();
		      
				 try {

					 stmt = con.createStatement();  

					 stmt.executeUpdate(
							 "CREATE DATABASE citas"
						  		);
				 }
			      catch(SQLException e) { 
			      }
				 try {
					con.close();
					 con = DriverManager.getConnection("jdbc:mysql://localhost/citas", duser, dpas);
					 
				 } catch (SQLException e1) {
						e1.printStackTrace();
				}
				  try {
					 stmt = con.createStatement();
				     stmt.executeUpdate(
				    		 "CREATE TABLE citas(hora TEXT,doctor TEXT,user INT,PRIMARY KEY (user));"
				     		);
				      }
				  catch(SQLException e) {
					
				  }
				  
				 
		   return con;
	}
	//
	public static horarioCitas consultarCitas(){
		
		horarioCitas horario=new horarioCitas();
		horario=inventarCitas();
		return horario;
}
	private static horarioCitas inventarCitas() {

		horarioCitas horario=new horarioCitas();
		
		for(int i=0;i<5;i++) {
			for(int j=0;j<6;j++) {
				for(int k=0;k<4;k++) {
					cita c=new cita();
					
					c.setDoctor("D"+j+""+k);
					horario.add(c, i, j);
			
				}
			}
		}
		return horario;
	}
	
	public static void registrarCita(String hora,String doctor,String user) {
		Connection con=conexiónCita();
		int códigoUsuario=number(user);
		   
		eliminarRegistro(con, user);
		java.sql.Statement stmt=null;
		try {
			stmt = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			stmt.executeUpdate(
					  "INSERT INTO citas(hora,doctor,user)" + 
			"VALUES (\""+hora+"\",\""+doctor+"\","+códigoUsuario+");"
			);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public static String[] leerCita(String user) {
		Connection con=conexiónCita();
		   String hora="";
		   String doctor="";
		   int códigoUsuario=number(user);
		   try {
			   PreparedStatement consulta = con.prepareStatement("SELECT * FROM citas WHERE user="+códigoUsuario
					   );
			   ResultSet res = consulta.executeQuery();			    
			     if(res.first()) {
				  hora=res.getString("hora");
				  doctor=res.getString("doctor");
				  }
			     else {
			    	 hora=null;
					 doctor=null;
			     }
			      res.close();
			      consulta.close();
			    
			  } catch (Exception e) {
			   JOptionPane.showMessageDialog(null, "no se pudo consultar el la tabla \n"+e);
			  }
		   System.out.println("*********"+hora+" :"+doctor);
		String cita[]= {hora,doctor};
		return cita;
	}
//error
	private static int number(String s) {
		int número=0;
		if(s==null||s.length()==0) {return 330;}
		número+=s.length();
		número+=(int)s.charAt(0);
		número+=(int)s.charAt(2);
		número+=(int)s.charAt(3);
		return número;
	}
public static void eliminarRegistro(Connection con, String user) {
	
	   int códigoUsuario=number(user);
	   
	   java.sql.Statement stmt0=null;
		try {
			stmt0 = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			stmt0.executeUpdate(
					  "DELETE  FROM citas WHERE user="+códigoUsuario+
					   " and hora is not null and doctor is not null ;"
			);
		} catch (SQLException e) {
			e.printStackTrace();
		}   
}
public static void eliminarCita(String user) {
	Connection con=conexiónCita();
	eliminarRegistro(con, user);
}
}
