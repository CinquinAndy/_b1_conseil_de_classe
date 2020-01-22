<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

for ($i = 1; $i < 27; $i++) {
    $nomEleve[$i] = filter_input(INPUT_POST, 'nom'.$i);
    $prenomEleve[$i] = filter_input(INPUT_POST, 'prenom'.$i);
    $request = $bd->prepare("insert into eleve (id,Nom, Prenom) VALUES (:id,:Nom,:Prenom)");
    $request->bindParam(":id",$i);
    $request->bindParam(":Nom",$nomEleve[$i]);
    $request->bindParam(":Prenom",$prenomEleve[$i]);
    $request->execute();
}

header("location: index.php");