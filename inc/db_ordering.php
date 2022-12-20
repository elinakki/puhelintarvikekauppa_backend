<?php
require_once('../backendilmanrepoa/inc/databaseconnection.php');

function addClienttoDB($nimi, $email, $osoite, $postinro) {
    $db = openDb();

    $sql = "INSERT INTO asiakas (asnimi, email, osoite, puhelin) VALUES (?,?,?,?)";
    $statement = $db->prepare($sql);
    $statement->execute(array($nimi, $email, $osoite, $postinro));
}