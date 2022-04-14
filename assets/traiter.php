<?php
$conn=mysql_connect('localhost','root','','voyageur');
$NOM=$_POST ['nom'];
$PRENOM=$_POST['prenom'];
$N_TEL=$_POST['n_tel'];
$DATE_DEPART=$_POST['date_depart'];
$DATE_RETOUR=$_POST['date_retour'];
$ADRESSE=$_POST['adresse'];
$GENRE=$_POST['genre'];
$STATUT=$_POST['statut'];

$sql="INSERT INTO voyageur(nom, prenom, n_tel, date_depart, date_retour, adresse, genre, statut) values 
('$NOM', '$PRENOM', '$N_TEL', '$DATE_DEPART', '$DATE_RETOUR', '$ADRESSE', '$GENRE', '$STATUT')";

$res=mysqli_query($conn, $sql);

?>


