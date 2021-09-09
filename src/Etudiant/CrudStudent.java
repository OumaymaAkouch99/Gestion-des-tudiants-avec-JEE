package Etudiant;

import java.util.List;

public interface CrudStudent {
 //Dans cette interface on essayera de reprendre nos besoins :
	public void addStudent(Student s); 		//Ajouter un Etudiant.
	public List<Student> listStudents();	 // Consulter tous les étudiants
	public List<Student> studentByCNE(String CNE); 		//Consulter par son CNE
	public Student getStudent(String CNE); 		//Retourner un étudiant par son CNE
	public void updateStudent(Student s); 		//mettre à jour un étudiant
	public void deleteStudent(String CNE);		// Supprimer un produit.
	 
	
}
