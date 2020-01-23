<?php
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

$i=26;
$request = $bd->prepare("delete from prof");
$request->bindParam(":id",$i);
$request->execute();

header("location: index.php");