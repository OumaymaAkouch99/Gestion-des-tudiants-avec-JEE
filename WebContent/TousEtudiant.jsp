<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html">
<title>Tous les etudiants</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap1.css">
<link rel="stylesheet" href="css/style.css">





<script type="text/javascript">
function confirmer(url){
	var rep=confirm("Etes vous sure de vouloir supprimer ? ")
	if(rep==true){
		document.location=url;
	}
}
</script>

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
	    <h1 class="display-4">Tous les Etudiants</h1>
	 	</div>
	</div>
	</div>

		<table class='table table-bordered'>
		<thead>
			<tr>
				<th>CNE</th>
				<th>Nom</th>
				<th>Prenom</th>
				<th>Email</th>
				<th>DateNaissance</th>
				<th>Baccalaureat</th>
				<th>Region</th>
				<th>Edit</th>
				<th>Delet</th>
				
				
			</tr>
			<c:forEach items="${model.students}" var="s">
				<tbody>
					<tr>
						<td>${s.CNE}</td>
						<td>${s.nom}</td>
						<td>${s.prenom}</td>
						<td>${s.email}</td>
						<td>${s.dateNaissance}</td>
						<td>${s.baccalaureat}</td>
						<td>${s.region}</td>
						<td><a href="controleur.php?action=edit&CNE=${s.CNE}">Edit</a></td>
						<td><a href="javascript:confirmer('controleur.php?action=delete&CNE=${s.CNE}')">Delete</a></td>
						
					</tr>
				</tbody>
			</c:forEach>
	
		</table>
	</div>
	
	
	
	<br>
	<div class="row">
		  <div class="col-xs-6 col-md-10">
		  <div class="panel-body">
		  <p></p>
		  <form action="controleur.php" method="post">
<div class="col-md-9 shortfieldz">
  <img src="img/ajoute.jpg" class="img-responsive zmdi zmdi-link" alt="Responsive image " width="30" height="24" /> 
  <input type="submit" value="Ajouter Nouveau" name="action" class="btn btn-info btn-lg" role='button'><br>
</div>
</form>
		  </div>
		  
		  </div>
		  <div class="col-xs-6 col-md-2">
		  <div class="panel-body">
		  <p></p>
		     <a class="alert btn-danger btn-lg" href="VueEtudiant.jsp" role="button">
		     <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-menu-button-wide" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path fill-rule="evenodd" d="M0 1.5A1.5 1.5 0 0 1 1.5 0h13A1.5 1.5 0 0 1 16 1.5v2A1.5 1.5 0 0 1 14.5 5h-13A1.5 1.5 0 0 1 0 3.5v-2zM1.5 1a.5.5 0 0 0-.5.5v2a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 0-.5-.5h-13zM14 7H2a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1zM2 6a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2H2z"/>
			  <path fill-rule="evenodd" d="M15 11H1v-1h14v1zM2 12.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0-10a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5zm0 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5z"/>
			  <path d="M12.823 2.823l-.396-.396A.25.25 0 0 1 12.604 2h.792a.25.25 0 0 1 .177.427l-.396.396a.25.25 0 0 1-.354 0z"/>
			</svg> Menu</a>
		  
		  </div>
		</div>
			</div>
	
	<br><br><br><br><br>
	
	
	<div>
	
		<div class="main" id="section2">
		<form action="controleur.php" method='post'>
		<input type="hidden" value="${model.mode}" name="mode"> <br><br>
		<h1><strong>Modifier</strong></h1>
		<div class="warning">
		  <p>&nbsp;<strong>Note!</strong>&nbsp;Pour modifier un Etudiant, Cliquez sur le boutton <strong> "Edit" </strong></p>
		</div>
		<c:if test="${model.mode=='edit'}">
		<div class="row">
		<div class="col-xs-6 col-md-7">
			<label for="CNE">CNE</label><br>
		  	${model.student.CNE}<input type="hidden" name="CNE" required class="form-control" value="${model.student.CNE}" /><br>
		</c:if>	
		
		  <strong>Nom:</strong><br>
		  <input type="text" name="Nom" required class="form-control" value="${model.student.nom}"/><br>
		  <strong>Prenom:</strong><br>
		  <input type="text" name="Prenom" required class="form-control" value="${model.student.prenom}"/><br>
		  <strong>Email:</strong><br>
		  <input type="Email" name="Email" required class="form-control" value="${model.student.email}"/><br>
		    </div>
   		  <div class="col-xs-6 col-md-5"><br><br>
		  <label for="birthday"><strong>Date de Naissance:</strong></label><br>
		  <input type="date" name="DateNaissance" required class="form-control" value="${model.student.dateNaissance}"/><br>
		  <strong>Baccalaureat : </strong> (Ex:  S.Mathematiques...)		  
		  <input type="text" name="Baccalaureat" required class="form-control" value="${model.student.baccalaureat}"/><br>
		  <strong>Region :</strong>		  
		  <input type="text" name="Region" required class="form-control" value="${model.student.region}"/><br>
		  
		  <input type="submit" value="Sauvegarder" name="action" class="btn btn-info btn-lg" role='button'><br>
		  
		
		</form>
		</div>
		</div>
		</div>
	</div>
	
	<br><br>
	<div><h3>
		${model.errors}
	</h3></div>
	
	

	
		  	
		  	
</div>

	
	
	
	
	
	
	
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	
</body>
</html>