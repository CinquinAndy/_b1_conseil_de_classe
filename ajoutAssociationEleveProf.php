<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

$request = $bd->prepare("select * from eleve");
$request->execute();
$eleve=$request->fe

for ($i = 1; $i < 27; $i++) {
    for ($x)
    $request = $bd->prepare("insert into matiere (id_prof,id_eleve) VALUES (:idEleve,:idProf)");
    $request->bindParam(":idEleve",$i);
    $request->bindParam(":idProf",$x);
    $request->bindParam(":Prenom",$prenomEleve[$i]);
    $request->execute();
    :
}

header("location: index.php");