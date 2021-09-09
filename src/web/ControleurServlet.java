package web;

import java.awt.print.PrinterException;
import java.io.IOException;
import java.util.List;

import javax.print.PrintException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.media.jfxmedia.logging.Logger;

import Etudiant.CatalogueStudentImpl;
import Etudiant.CrudStudent;
import Etudiant.Student;

public class ControleurServlet extends HttpServlet {
	private CrudStudent student;//la couche metier
	
	@Override
	/*la méthode init() est la méthode qui s'execute une fois 
	 la servlet est chargée en mémoire*/
	public void init() throws ServletException {
	/*on suppose qu'une seule instance de la couche metier
		 * qui va etre crée et liée au controleur*/
		student=new CatalogueStudentImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		/*Création du modele et initialisation*/
		EtudiantModel model=new EtudiantModel();
		/*Stocker le modele dans l'objet request*/
		request.setAttribute("model", model);
		/*lire l'action voulue(chercher,delete,save,edit)*/
		String action=request.getParameter("action");
		
		if(action!=null) {
			if(action.equals("chercher")) {
				try {
				/*stocker la valeur de motCle saisi dans le modele*/
				model.setmotCle(request.getParameter("motCle"));
				/*récupérer le resultat*/
				List<Student> students=student.studentByCNE((model.getmotCle()));
				/*Stocker le resultat dans le modele*/
				model.setStudents(students);
				}catch(Exception e){
					model.setErrors(e.getMessage());

				}
			}else if(action.equals("Afficher")) {
				model.setStudents(student.listStudents());
				/*Appel à la vue*/
				request.getRequestDispatcher("TousEtudiant.jsp").
				forward(request,response);
		
		
			}else if(action.equals("Ajouter")) {
				model.setStudents(student.listStudents());
				request.getRequestDispatcher("AddStudent.jsp").
				forward(request,response);
		
		
			}else if(action.equals("Ajouter Nouveau")) {
				model.setStudents(student.listStudents());
				request.getRequestDispatcher("AddStudent.jsp").
				forward(request,response);
		
		
			}else if(action.equals("delete")) {
				// lire le CNE qu'on veut supprimer
				String CNE=request.getParameter("CNE");
				student.deleteStudent(CNE);
				//Recharger tous les etudiants pour s'assurer que la suppression est bien effectuée
				model.setStudents(student.listStudents());
				/*Appel à la vue*/
				request.getRequestDispatcher("TousEtudiant.jsp").
				forward(request,response);
				
			}else if(action.equals("Sauvegarder")) {
				try {
					/*Récupération des données saisis*/
				model.getStudent().setCNE(request.getParameter("CNE"));
				model.getStudent().setNom(request.getParameter("Nom"));
				model.getStudent().setPrenom(request.getParameter("Prenom"));
				model.getStudent().setEmail(request.getParameter("Email"));
				model.getStudent().setDateNaissance(request.getParameter("DateNaissance"));
				model.getStudent().setBaccalaureat(request.getParameter("Baccalaureat"));
				model.getStudent().setRegion(request.getParameter("Region"));
				model.setMode(request.getParameter("mode"));

				/*les deux cas possibles lors d'un enregistrement*/
				if(model.getMode().equals("ajout"))
					{student.addStudent(model.getStudent());
					/*Appel à la vue*/
				request.getRequestDispatcher("StudentAdded.jsp").
				forward(request,response);}
				
				else if(model.getMode().equals("edit"))
					
				student.updateStudent(model.getStudent());
				model.setStudents(student.listStudents());
				/*Appel à la vue*/
				request.getRequestDispatcher("TousEtudiant.jsp").
				forward(request,response);
				
				}catch(Exception e){
					model.setErrors(e.getMessage());
					model.setStudents(student.listStudents());

				}
				}else if(action.equals("edit")) {
				//récupérer le CNE de l'étudiant qu'on veut modifier
				String CNE=request.getParameter("CNE");
				//récupérer l'étudiant
				Student s=student.getStudent(CNE);
				//stocker l'étudiant dans le modele
				model.setStudent(s);
				// changer le mode pour qu'il soit une édition et non pas un ajout simple
				model.setMode("edit");
				model.setStudents(student.listStudents());
				/*Appel à la vue*/
				request.getRequestDispatcher("TousEtudiant.jsp").
				forward(request,response);
			}
		}
		
		
		/*Appel à la vue*/
		request.getRequestDispatcher("VueEtudiant.jsp").
		forward(request,response);
		
		
		
	}
	

}
