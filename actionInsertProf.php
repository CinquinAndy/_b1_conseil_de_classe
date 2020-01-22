<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

for ($i = 1; $i < 15; $i++) {
    $nomEleve[$i] = filter_input(INPUT_POST, 'nom'.$i);
    $prenomEleve[$i] = filter_input(INPUT_POST, 'prenom'.$i);
    $matiere[$i] = filter_input(INPUT_POST, 'matiere'.$i);
    $request = $bd->prepare("insert into prof (id_prof,Nom, Prenom,matiere) VALUES (:id,:Nom,:Prenom,:Matiere)");
    $request->bindParam(":id",$i);
    $request->bindParam(":Nom",$nomEleve[$i]);
    $request->bindParam(":Prenom",$prenomEleve[$i]);
    $request->bindParam(":Matiere",$matiere[$i]);
    $request->execute();
}

header("location: index.php");