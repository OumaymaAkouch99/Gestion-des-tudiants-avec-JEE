<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html">
<title>VueEtudiant</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap1.css">
<link rel="stylesheet" href="css/style.css">


<link rel="stylesheet" href="css/style.css">


<script type="text/javascript">
function confirmer(url){
	var rep=confirm("Etes vous sure de vouloir supprimer ? ")
	if(rep==true){
		document.location=url;
	}
}
</script>

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

<br>
<div class="jumbotron jumbotron-fluid">
	<div class="container">
    <h1 class="display-4">Student Information Menu</h1>
 	
	</div>
</div>


<div class="row">
<div class="col-xs-6 col-md-1">
</div>
<div class="col-xs-6 col-md-4">
	<div class="panel panel-default">
		 <div class="panel-heading">
		    <h3 class="panel-title">Ajouter Etudiant</h3>
		 </div>
	<div class="panel-body">
	<p></p>
			<form action="controleur.php" method='post'>
 <div class="col-md-9 shortfieldz">
  <img src="img/ajoute.jpg" class="img-responsive zmdi zmdi-link" alt="Responsive image " width="30" height="30" /> 
 
  <input type="submit" value="Ajouter" name="action" class="btn btn-info btn-lg" role='button'> 
  </div>
  <br>
		    </form>
		     
</div>
</div>
		  
</div>
<div class="col-xs-6 col-md-2">
</div>
<div class="col-xs-6 col-md-4">
	<div class="panel panel-default">
		 <div class="panel-heading">
		  <h3 class="panel-title">Etudiants enregistres</h3>
		  </div>
		  <div class="panel-body">
		  <p></p>
		  <form action="controleur.php" method="post">
		  <div class="col-md-9 shortfieldz">
          <img src="img/liste.jpg" class="img-responsive zmdi zmdi-link" alt="Responsive image " width="35" height="40" /> 
           &nbsp;           
		  <input type="submit" value="Afficher" name="action" class="btn btn-danger btn-lg" role='button'><br>
		  </div>
		  </form>
		  </div>
		</div>
			</div>
</div>









<br><br><br>
	<div>
	<br>
		<h1>Chercher un Etudiant par CNE</h1>
<div class="main" id="sectioncherche">

		<form action="recherche.php" method='post'>
		  <label for="motCle">motCle</label><br>
		  <input type="text" name="motCle" required class="form-control" value="${model.motCle}"/><br>
		  <input type="submit" value="chercher" name="action" class="btn btn-info btn-lg" role='button'><br>
		  <br>
		</form>
		</div>
		<div>

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
	</div>
	

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