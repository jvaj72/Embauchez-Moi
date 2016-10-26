<!DOCTYPE html>
<html>
<head>
	<title>Ajouter une formation</title>
	<link rel="stylesheet" type="text/css" href="ajouter_formation.css">
	<meta charset="utf-8" />
</head>
<body>
<?php 

try
{
	$bdd = new PDO('mysql: host=localhost; dbname=embauchez-moi;charset=utf8', 'root', '');
}
catch (Exception $e)
{
	die('Erreur:' .$e->getMessage());
}

if(isset($_POST['valider']))
	{
		$stmt = $bdd->prepare('INSERT INTO formation
			(id_candidat, annee, nom, diplome_obtenu, details, niveau, domaine, etablissement) 
			VALUES 
			(:id_candidat, :annee, :nom, :diplome_obtenu, :details, :niveau, :domaine, :etablissement)');

		$stmt->execute (array(
			'id_candidat'=>$_SESSION['id_candidat'],
			'annee'=>(isset($_POST['annee']) ) ? $_POST['annee'] : 0,
			'nom'=>(isset($_POST['nom']) ) ? $_POST['nom'] : 0,
			'diplome_obtenu'=>(isset($_POST['capt1']) ) ? 1 : 0 ,
			'details'=>(isset($_POST['details']) ) ? $_POST['details'] : 0,
			'niveau'=> (isset($_POST['niveau']) ) ? $_POST['niveau'] : 0,
			'domaine'=>(isset($_POST['domaine']) ) ? $_POST['domaine'] : 0,
			'etablissement'=>(isset($_POST['etablissement']) ) ? $_POST['etablissement'] : 0));

		echo "votre formation à été bien enregistrée"

	 ?>

	<?php 
		}

			else
		{

			echo "La formation n'est pas remplie";

		}
	 ?>
	<br/>
	<br/>

	<form action="ajouter_formation.php" method="POST">
	<h1>Ajouter une formation ou un diplôme</h1>

	<label>Formation ou diplôme</label><input type="text" name="nom" />
	<label>Année</label><input type="text" name="annee" />
	<label><input type="checkbox" name="capt1" value="1" checked="checked" id="box1">Diplôme Obtenu</label>
	<br/>
	<br/>
	<label>details</label><input type="text" name="details" />
	<br/>

	
	<br/>
	<select name="niveau" size="1">
	<option selected>Niveau</option>
	<option>bac + 5</option>
	<option>bac + 3</option>
	<option>bac + 2</option>
	<option>bac</option>
	<option>CAP, BEP ou équivalent</option>
	<option>2nd ou 1ère achevée</option>
	<option>BEPC ou 3ème achevée</option>
	<option>4ème achevée</option>
	<option>Aucune formation scolaire</option>
	</select>
	
	<br/>
	<br/>
	

	<select name="domaine" size="1">
	<option selected>Domaine</option>
	<option>Agriculture</option>
	<option>Architecte, urbanisme, paysage, construction(BTP)</option>
	<option>Art, design</option>
	<option>Audiovisuel, spectacle</option>
	<option>Audit, gestion</option>
	<option>Automobile</option>
	<option>Banque, Assurance</option>
	<option>Chimie, Pharmacie</option>
	<option>Commerce, distribution</option>
	<option>Communication, Marketing, publicité</option>
	<option>Construction aéronautique, ferroviaire et navale</option>
	<option>Culture, artisanat d'art</option>
	<option>Défense, sécurité</option>
	<option>Droit, justice</option>
	<option>Edition, journalisme</option>
	<option>Electronique</option>
	<option>Energie</option>
	<option>Enseignement</option>
	<option>Environnement</option>
	<option>Bois(filière)</option>
	<option>Fonction Publique</option>
	<option>Hôtellerie, restauration</option>
	<option>Industrie alimentaire</option>
	<option>Informatique, internet et télécom</option>
	<option>Jeu Vidéo</option>
	<option>Maintenance, entretien</option>
	<option>Mécanique</option>
	<option>Mode et industrie textile</option>
	<option>Logistique, Transport</option>
	<option>Santé</option>
	<option>Social</option>
	<option>Recherche</option>
	<option>Sport, Loisirs, tourisme</option>
	<option>Traduction, interprétation</option>
	<option>Verre, béton, céramique</option>
	</select>
	
	<br/>
	<br/>

	<label>etablissement</label><input type="text" name="etablissement"/>

	<button>Annuler</button>
	<button type="submit" name="valider">Valider</button>
	</form>
	<br/>

</body>




