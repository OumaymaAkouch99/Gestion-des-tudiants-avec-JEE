package web;

import java.util.ArrayList;
import java.util.List;


import Etudiant.Student;
/*
 * un modele EtudiantModel représentant les données récupérées 
 * depuis le formulaire 
 * VueEtudiant.jsp (motCle,CNE,nom, etc.)et les résultats qu'on va afficher 
 */
public class EtudiantModel {
	/* Propriétés du modele */
	private String motCle;//correspond au CNE recherché
	private Student student=new Student();
	private List<Student> students=new ArrayList<Student>();
	private String errors;//pour récupérer les messages d'erreur
	
	/*
	 * la propriété au dessous détermine si il s'agit
	 * d'un ajout ou d'une édition sa valeur par default est ajout 
	 * car le formulaire est fait pour ajouter
     */
	private String mode="ajout";
	
	
	/*Getters et setters*/
	public String getmotCle() {
		return motCle;
	}
	public void setmotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Student> getStudents() {
		return students;
	}
	public void setStudents(List<Student> students) {
		this.students = students;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getErrors() {
		return errors;
	}
	public void setErrors(String errors) {
		this.errors = errors;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
}
