package Etudiant;

import java.util.List;

public class TestStudent {

	public static void main(String[] args) {
		CrudStudent student=new CatalogueStudentImpl();
		student.addStudent(new Student("S773788","ryam","maryam","mag@gmail.com","1998-04-18","S.Mathématiques","Oriental"));
		student.addStudent(new Student("Zdf3788","mid","hamid","hamid@gmail.com","1998-04-18","S.Mathématiques","Oriental"));
		student.addStudent(new Student("AE23","jda","majda","majda@gmail.com","1998-04-18","S.Physiques","Oriental"));
		student.addStudent(new Student("Ez224","sam","issam","majda@gmail.com","1998-04-18","S.Mathématiques","Oriental"));

		
		//afficher tous les etudiants
		System.out.println("-------------------------------------");
		List<Student> listEtudiants1=student.listStudents();
		for(Student s:listEtudiants1) {
			System.out.println(s.getCNE() + " " + s.getNom());
			
		}
		/*
		//consulter un etudiant
		System.out.println("-------------------------------------");
		List<Student> listEtudiants2=student.studentByCNE(3);
		for(Student s:listEtudiants2) {
			System.out.println(s.getCNE() + " " + s.getNom());
		}
		//afficher un etudiant
		System.out.println("-------------------------------------");
		try {
		Student s=student.getStudent(10);
		System.out.println(s.getNom()+ " "+ s.getPrenom());
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		//modifier un etudiant
		System.out.println("-------------------------------------");
		try {
		Student s=student.getStudent(1);
		s.setRegion("France");
		student.updateStudent(s);
		Student s2=student.getStudent(1);
		System.out.println(s2.getNom()+ " "+ s2.getRegion());
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		//supprimer un etudiant
		/*try {
		System.out.println("-------------------------------------");
		student.deleteStudent(6);
		student.deleteStudent(4);
		student.deleteStudent(3);
		student.deleteStudent(2);
		student.deleteStudent(1);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}*/
	}

}
