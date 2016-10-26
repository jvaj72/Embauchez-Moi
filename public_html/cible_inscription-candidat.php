<?php
try
{
	$bdd = new PDO('mysql: host=localhost;dbname=embauchez-moi;charset=utf8' , 'root', "");
}
catch(Exception $e)
{
	die('Erreur:' .$e->getMessage());
}

$stmt = $bdd->prepare('INSERT INTO CANDIDAT(mail,password,nom,prenom,date_naissance,adresse,cp,ville,tel,mail_pro,phrase_accroche) VALUES(:mail,:password,:nom,:prenom,:date_naissance,:adresse,:cp,:ville,:tel,:mail_pro,:phrase_accroche)');
$stmt->bindValue('mail',$_POST['mail']);
$stmt->bindValue('password',$_POST['password']);
$stmt->bindValue('nom',$_POST['nom']);
$stmt->bindValue('prenom',$_POST['prenom']);
$stmt->bindValue('date_naissance',$_POST['date_naissance']);
$stmt->bindValue('adesse',$_POST['adresse']);
$stmt->bindValue('cp',$_POST['cp']);
$stmt->bindValue('ville',$_POST['ville']);
$stmt->bindValue('tel',$_POST['tel']);
$stmt->bindValue('mail_pro',$_POST['mail_pro']);
$stmt->bindValue('phrase_accroche',$_POST['phrase_accroche']);
$stmt->execute();

$reponse = $bdd->query('SELECT * FROM CANDIDAT');

while($donnees = $reponse->fetch())
{
	echo $donnees['mail'];
	echo $donnees['password'];
	echo $donnees['nom'];
	echo $donnees['prenom'];
	echo $donnees['date_naissance'];
	echo $donnees['adresse'];
	echo $donnees['cp'];
	echo $donnees['ville'];
	echo $donnees['tel'];
	echo $donnees['mail_pro'];
	echo $donnees['phrase_accroche'];
}



<?php

echo("coucou");
try
{
	$bdd = new PDO('mysql: host=localhost;dbname=embauchez-moi;charset=utf8', 'root', "");
}
catch(Exception $e)
{
	die('Erreur:' .$e->getMessage());
}

$stmt = $bdd->prepare('INSERT INTO CANDIDAT(mail,password,nom,prenom,date_naissance,adresse,cp,ville,tel,mail_pro,phrase_accroche) VALUES(:mail,:password,:nom,:prenom,:date_naissance,:adresse,:cp,:ville,:tel,:mail_pro,:phrase_accroche)');


$stmt->execute(array('mail'=>'azerty@azerty.fr','password'=>'azerty','nom'=>'dupont','prenom'=>'Marcel','date_naissance'=>'1968-01-02','adresse'=>'16 rue des rosiers','cp'=>'75000','ville'=>'Paris','tel'=> 0243894413,'mail_pro'=>'moipro@gmail.com','phrase_accroche'=>'ici c\'est paris'));


$reponse = $bdd->query('SELECT * FROM CANDIDAT');

while($donnees = $reponse->fetch())
{
	echo $donnees['mail'];
	echo $donnees['password'];
	echo $donnees['nom'];
	echo $donnees['prenom'];
	echo $donnees['date_naissance'];
	echo $donnees['adresse'];
	echo $donnees['cp'];
	echo $donnees['ville'];
	echo $donnees['tel'];
	echo $donnees['mail_pro'];



	