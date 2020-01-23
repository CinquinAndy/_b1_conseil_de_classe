<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

for ($i = 0; $i < 26; $i++) {
    for ($x = 0; $x < 14; $x++) {
        $request = $bd->prepare("insert into eleve_prof (id_eleve,id_prof) VALUES (:idEleve,:idProf)");
        $request->bindParam(":idEleve", $i);
        $request->bindParam(":idProf", $x);
        $request->execute();
    }
}
header("location: index.php");