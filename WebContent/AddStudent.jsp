<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap1.css">
<link rel="stylesheet" href="css/style.css">


<style>
.warning {
  background-color: #ffffcc;
  border-left: 5px solid #ffeb3b;
}
</style>


<link rel="icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFTk2tJ6GBJIg/company-logo_200_200/0?e=2159024400&v=beta&t=fFTCzbrgCznHkCvKzeYirPk6-t6xsACiCB71G-hxuJ4" type="image/x-icon" >

</head>
<body>





<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <img src="img/ensmr-couleur.png" alt="photo" style="width:90px">

  <a class="navbar-brand" href="#">ENSMR</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Computer Science Department <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
      </li>
      
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Jakarta EE
</a>
      </li>
    </ul>
    
  </div>
</nav>











<div class='container'>
<div>
<br>
<div class="jumbotron jumbotron-fluid">
	<div class="container">
		<div class="container">
	    <h1 class="display-4">Ajouter Un Nouveau Etudiant</h1>
	 	</div>
	</div>
	</div>
	
		<div class="main" id="section2">
		<form action="Ajouter.php" method='post'>
		<input type="hidden" value="${model.mode}" name="mode"> <br><br>
		<c:if test="${model.mode=='ajout'}">
		
		<div class="warning">
	    <p>&nbsp;<strong>NB!</strong> &nbsp;  Si un CNE existe deja, RIEN ne va etre Ajouter</p>	
		</div>	
		<div class="row">
		<div class="col-xs-6 col-md-7">
			<label for="CNE">CNE</label><br>
		  	<input type="text" name="CNE" required class="form-control" value="${model.student.CNE}" /><br>
		</c:if>
		
		<label for="Nom">Nom:</label><br>
		  <input type="text" name="Nom" required class="form-control" value="${model.student.nom}"/><br>
		  <label for="Prenom">Prenom:</label><br>
		  <input type="text" name="Prenom" required class="form-control" value="${model.student.prenom}"/><br>
		  </div>
		  
		  <div class="col-xs-6 col-md-4">
		  
		  <label for="Email">Email:</label><br>
		  <input type="Email" name="Email" required class="form-control" value="${model.student.email}"/><br>
		  
		  <label for="birthday">Date de Naissance:</label><br>
		  <input type="date" name="DateNaissance" required class="form-control" value="${model.student.dateNaissance}"/><br>
		  <strong>Baccalaureat : </strong> (Ex:  S.Mathematiques...)		  
		  <input type="text" name="Baccalaureat" required class="form-control" value="${model.student.baccalaureat}"/><br>
		  <strong>Region :</strong>		  
		  <input type="text" name="Region" required class="form-control" value="${model.student.region}"/><br>
		  
		  </div>
		  </div>			  
		  
		  
		  <div class="row">
		  <div class="col-xs-6 col-md-9">
		  <div class="panel-body">
		  <p></p>
		     <a class="alert btn-warning btn-lg" href="VueEtudiant.jsp" role="button" >   
		     <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-arrow-left-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path fill-rule="evenodd" d="M8.354 11.354a.5.5 0 0 0 0-.708L5.707 8l2.647-2.646a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708 0z"/>
  <path fill-rule="evenodd" d="M11.5 8a.5.5 0 0 0-.5-.5H6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/>
</svg>
		     Retour au Menu</a>
		  
		  	</div>
			</div>
			<div class="col-xs-6 col-md-3">
		  <div class="panel-body">
		  <p></p>
		  <br>
		<input type="submit" value="Sauvegarder" name="action" class="btn btn-info btn-lg" role='button'><br>
     
		  
		  </div>
		</div>
		  </div>
		  
		
		</form>
		<br>
		</div>
	</div>

</div>

	
	
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	
</body>
</html>