package Etudiant;

import java.sql.Connection;
import java.sql.DriverManager;
/* Une classe pour garantir l'unicité de la connection dans la BD*/

public class SingletonConnection {
	
	
	
	private static Connection connection;
	/*le bloc static s'execute au moment de chargement 
	 * de la classe en mémoire
	 * */
	static {
		try {
			/*Création de connection*/
			/*Chargement de pilote jcbc*/
			Class.forName("com.mysql.cj.jdbc.Driver");
			/*Etablir la connection avec la base studentjsp*/

			connection=DriverManager.getConnection
					("jdbc:mysql://localhost:3306/studentjsp?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC","root","Root1234@");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
	/*Une méthode getConnection() est nécessaire pour retourner la connection*/
	public static Connection getConnection() {
		return connection;
	}
	
	
	

	
}
