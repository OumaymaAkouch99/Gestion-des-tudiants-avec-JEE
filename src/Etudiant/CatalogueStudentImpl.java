package Etudiant;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CatalogueStudentImpl implements CrudStudent {

	
	@Override
	/*Ajouter un étudiant*/
	public void addStudent(Student s) {
		/*Etablir la connection*/
		Connection conn=SingletonConnection.getConnection();
		try {
			/* insértion d'un enregistrement à la table studentinfo */
			PreparedStatement ps=conn.prepareStatement(
					"INSERT INTO studentinfo values(?,?,?,?,?,?,?)");
			ps.setString(1, s.getCNE());
			ps.setString(2, s.getNom());
			ps.setString(3, s.getPrenom());
			ps.setString(4, s.getEmail());
			ps.setString(5, s.getDateNaissance());
			ps.setString(6, s.getBaccalaureat());
			ps.setString(7, s.getRegion());
			/*Execution de traitement*/
			ps.executeUpdate();
			/*Fermeture de l'objet ps*/
			ps.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	
	
	
	@Override
	/*Lister les étudiants*/
	public List<Student> listStudents() {

		List<Student> listEtudiants=new ArrayList<Student>();
		Connection conn=SingletonConnection.getConnection();
		try{
			/*lister tous les étudiants de la table studentinfo*/
		PreparedStatement ps=conn.prepareStatement("select * from studentinfo");
		/*Exécution de la requette*/
		ResultSet rs=ps.executeQuery();
		/*parcours des données retournées*/
		while(rs.next()){
			
		Student s=new Student();
		s.setCNE(rs.getString("CNE"));
		s.setNom(rs.getString("Nom"));
		s.setPrenom(rs.getString("Prenom"));
		s.setEmail(rs.getString("Email"));
		s.setDateNaissance(rs.getString("DateNaissance"));
		s.setBaccalaureat(rs.getString("Baccalaureat"));
		s.setRegion(rs.getString("Region"));
		listEtudiants.add(s);
		}
		ps.close();
		}catch(Exception e){
			// TODO Auto-generated catch block
					e.printStackTrace();
			}
		
		return listEtudiants;
	}

	
	
	
	
	
	
	
	
	
	
	@Override
	/*La recherche d'un étudiant avec son CNE*/
	public List<Student> studentByCNE(String CNE) {
		List<Student> listEtudiants=new ArrayList<Student>();
		Connection conn=SingletonConnection.getConnection();
		try{
		PreparedStatement ps=conn.prepareStatement("select * from studentinfo where CNE=?");
		ps.setString(1, CNE);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			/*Initialisation d'un étudiant*/
			
		Student s=new Student();
		s.setCNE(rs.getString("CNE"));
		s.setNom(rs.getString("Nom"));
		s.setPrenom(rs.getString("Prenom"));
		s.setEmail(rs.getString("Email"));
		s.setDateNaissance(rs.getString("DateNaissance"));
		s.setBaccalaureat(rs.getString("Baccalaureat"));
		s.setRegion(rs.getString("Region"));
		/*Ajouter l'étudiant à la liste*/
		listEtudiants.add(s);
		}
		ps.close();
		}catch(Exception e){
			// TODO Auto-generated catch block
				e.printStackTrace();
				
		}
		
		return listEtudiants;
	}

	
	
	
	
	
	
	
	
	
	
	
	@Override
	public Student getStudent(String CNE) {
		Student s=null;
		Connection conn=SingletonConnection.getConnection();
		try{
		PreparedStatement ps=conn.prepareStatement("select * from studentinfo where CNE=?");
		ps.setString(1, CNE);
		ResultSet rs=ps.executeQuery();
		/*si l'étudiant existe dans la BD*/
		if(rs.next()){
			
		s=new Student();
		s.setCNE(rs.getString("CNE"));
		s.setNom(rs.getString("Nom"));
		s.setPrenom(rs.getString("Prenom"));
		s.setEmail(rs.getString("Email"));
		s.setDateNaissance(rs.getString("DateNaissance"));
		s.setBaccalaureat(rs.getString("Baccalaureat"));
		s.setRegion(rs.getString("Region"));
		
		}
		ps.close();
		}catch(Exception e){
			// TODO Auto-generated catch block
				e.printStackTrace();		
		}
		if(s==null) throw new RuntimeException("Etudiant avec CNE = "+CNE+" n_existe pas");
		return s;
	}

	
	
	
	
	
	
	
	
	
	@Override
	/*Modifier un etudiant*/
	public void updateStudent(Student s) {
		Connection conn=SingletonConnection.getConnection();
		try {
			/*Modifier un enregistrement*/
			PreparedStatement ps=conn.prepareStatement(
					"update studentinfo set Nom=?,Prenom=?,Email=?,DateNaissance=?,Baccalaureat=?,Region=? where CNE=? ");
			
			ps.setString(1, s.getNom());
			ps.setString(2, s.getPrenom());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getDateNaissance());
			ps.setString(5, s.getBaccalaureat());
			ps.setString(6, s.getRegion());
			ps.setString(7, s.getCNE());
			ps.executeUpdate();
			ps.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	
	
	
	
	
	
	
	@Override
	/*Supprimer un étudiant*/
	public void deleteStudent(String CNE) {
		Connection conn=SingletonConnection.getConnection();
		try {
			/*Suppression d'un enregistrement*/
			PreparedStatement ps=conn.prepareStatement(
					"delete from studentinfo where CNE=? ");
			
			
			ps.setString(1, CNE);
			ps.executeUpdate();
			ps.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}