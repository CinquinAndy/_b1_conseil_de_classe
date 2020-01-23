<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

$compteur=filter_input(INPUT_POST, "compteur");
$idEleve=filter_input(INPUT_POST, "idEleve");

for ($i=0;$i<$compteur;$i++){
    $idProf[$i]=filter_input(INPUT_POST, "idProf".$i);
    $moyenne[$i]=filter_input(INPUT_POST, "moyenne".$i);
    $appreciation[$i]=filter_input(INPUT_POST, "appreciation".$i);
}

for ($i=0;$i<$compteur;$i++){

    $request = $bd->prepare("update eleve_prof set 
                      moyenne=:moyenne,
                      appreciation=:appreciation
where id_eleve=:id_eleve and id_prof=:id_prof");
    $request->bindParam(":id_eleve",$idEleve);
    $request->bindParam(":id_prof",$idProf[$i]);
    $request->bindParam(":moyenne",$moyenne[$i]);
    $request->bindParam(":appreciation",$appreciation[$i]);
    $request->execute();
    $request=null;
}

header("location: index.php");