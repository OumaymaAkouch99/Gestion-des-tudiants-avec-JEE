package Etudiant;

import java.io.Serializable;

public class Student implements Serializable { 

/*Pourquoi implementer "Serializable"? Pour pouvoir passé l'objet "Student" d'une partie
de l'aaplication à une autre (cas si on veut creer des applications distribuées)*/

    //Declaration des attributs:
	private String CNE;
	private String Nom;
	private String Prenom;
	private String Email;
	private String DateNaissance;
	private String Baccalaureat;
	private String Region;
	
	
	
	public Student(String CNE, String Nom, String Prenom, String Email, String DateNaissance, String Baccalaureat, String Region) {
		super();
		this.CNE = CNE;
		this.Nom = Nom;
		this.Prenom = Prenom;
		this.Email = Email;
		this.DateNaissance = DateNaissance;
		this.Baccalaureat = Baccalaureat;
		this.Region = Region;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCNE() {
		return CNE;
	}
	public void setCNE(String CNE) {
		this.CNE = CNE;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String Nom) {
		this.Nom = Nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String Prenom) {
		this.Prenom = Prenom;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	public String getDateNaissance() {
		return DateNaissance;
	}
	public void setDateNaissance(String DateNaissance) {
		this.DateNaissance = DateNaissance;
	}
	public String getBaccalaureat() {
		return Baccalaureat;
	}
	public void setBaccalaureat(String Baccalaureat) {
		this.Baccalaureat = Baccalaureat;
	}
	public String getRegion() {
		return Region;
	}
	public void setRegion(String Region) {
		this.Region = Region;
	}
	
}
