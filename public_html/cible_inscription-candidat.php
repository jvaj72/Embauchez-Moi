<?php
try
{
	$bdd = new PDO('mysql: host=localhost;dbname=embauchez-moi;charset=utf8' , 'root', "");
}
catch(Exception $e)
{
	die('Erreur:' .$e->getMessage());
}

$mail = 'un mail';

$stmt = $bdd->prepare('INSERT INTO CANDIDAT(mail,mailverif,password,passverif) VALUES(:mail,:mailverif,:password,:passverif)');
$stmt->bindValue('mail',$_POST['mail']);
$stmt->bindValue('mailverif',$_POST['mailverif']);
$stmt->bindValue('password',$_POST['password']);
$stmt->bindValue('passverif',$_POST['passverif']);
$stmt->execute();

$reponse = $bdd->query('SELECT * FROM CANDIDAT');

while($donnees = $reponse->fetch())
{
	echo $donnees['mail'];
	echo $donnees['mailverif'];
	echo $donnees['password'];
	echo $donnees['passverif'];
}



