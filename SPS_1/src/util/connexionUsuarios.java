package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import usuarioBase.datos;

public class connexionUsuarios {

	public static void main(String [] args) {
		System.out.println("End");
		checkUser("email","password");
	}
	
	static  String duser = "root";
	static  String dpas = "Polidori2";

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
	
	private static Connection  conexiónUsuarios() {
		   Connection con = null;
		   java.sql.Statement stmt = null;
			
		   con=conexión();
		      
				 try {

					 stmt = con.createStatement();  

					 stmt.executeUpdate(
							 "CREATE DATABASE users"
						  		);
				 }
			      catch(SQLException e) { 
			    	
			      }
				 try {
					con.close();
					 con = DriverManager.getConnection("jdbc:mysql://localhost/users", duser, dpas);
					 
				 } catch (SQLException e1) {
						e1.printStackTrace();
				}
				  try {
					 stmt = con.createStatement();
				     stmt.executeUpdate(
				    		 "CREATE TABLE users(name TEXT,lastName TEXT,email TEXT, password TEXT,years INT);"
				     		);
				      }
				  catch(SQLException e) {
					
				  }
				  
				 
		   return con;
	};
	private static Connection conexiónsugerencias() {
		Connection con;
		con=conexión();
		   java.sql.Statement stmt = null;

		 try {

			 stmt = con.createStatement();  

			 stmt.executeUpdate(
					 "CREATE DATABASE suggestions"
				  		);
		 }
	      catch(SQLException | java.lang.NullPointerException e1) { 
	      }
		 try {
			con.close();
			 con = DriverManager.getConnection("jdbc:mysql://localhost/suggestions", duser, dpas);
			 
		 } catch (SQLException e1) {
				e1.printStackTrace();
		}
		  try {
			 stmt = con.createStatement();
		     stmt.executeUpdate(
		    		 "CREATE TABLE suggestions(sug TEXT);"
		     		);
		      }
		  catch(SQLException e) {
			
		  }
		  
		 
   return con;
}
	public static boolean checkUser(String user,String password) {
	
		Connection con = conexiónUsuarios();
		   try {
			   PreparedStatement consulta = con.prepareStatement(
					   "SELECT * FROM users WHERE email= \""+user+"\" AND password=\""+password+
					   "\"and lastName is not null  and years is not null and email is not null");
			   ResultSet res = consulta.executeQuery();
			  if(res.first()){
				  System.out.println("Usuario válido:");
				  con.close();
				  return true;
			  }
			  else {
				  System.out.println("Usuario Invalido");

			  }

		   } catch (Exception e) {
			e.printStackTrace();
		   }
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		   return false;			
		
	}
	public static ArrayList<String> getUser(String email) {
		Connection con = conexiónUsuarios();
		String name="";
		String lastName="";
		String password="";
		String years="";
		ArrayList<String> user=new ArrayList<String>();

		try {
			   PreparedStatement consulta = con.prepareStatement("SELECT * FROM users WHERE email="+"\""+email+"\""
					   +
					   " and password is not null and lastName is not null  and years is not null and name is not null ;");
					   
			   ResultSet res = consulta.executeQuery();
			   
			   if(res.first()) {
				   name=res.getString("name");
				   lastName=res.getString("lastName");
				   password=res.getString("password");
				   years=res.getString("years");

			   }
			   res.close();
				  consulta.close();
			    
			  } catch (Exception e) {
			   JOptionPane.showMessageDialog(null, "No se pudo consultar el registro \n"+e);
			  }

		   user.add(name);
		   user.add(lastName);
		   user.add(password);
		   user.add(years);

		   
		return user;
	}
	
	public static void 	register(String name,String lastName,String email,String password,int years)  {
		
		Connection con=conexiónUsuarios();
		java.sql.Statement stmt=null;
		try {
			stmt = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			stmt.executeUpdate(
					  "INSERT INTO users(name,lastName,email,password,years)" + 
			"VALUES (\""+name+"\",\""+lastName+"\",\""+email+"\",\""+password+"\","+years+");"
			);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public static void recordSuggestion(String sug) {
		Connection con=conexiónsugerencias();
		java.sql.Statement stmt=null;
		try {
			stmt = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			stmt.executeUpdate(
					  "INSERT INTO suggestions(sug)" + 
			"VALUES (\""+sug+"\");"
			);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
