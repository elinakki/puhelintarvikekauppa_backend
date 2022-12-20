<?php

require_once('../inc/functions.php');
require_once('../inc/headers.php');

$db = null;

$input = json_decode(file_get_contents('php://input'));
$nimi = filter_var($input->nimi,FILTER_SANITIZE_STRING);
$email = filter_var($input->email,FILTER_SANITIZE_STRING);
$lahiosoite = filter_var($input->lahiosoite,FILTER_SANITIZE_STRING);
$postinro = filter_var($input->$postinro,FILTER_SANITIZE_STRING);

try {
    $db = openDb();
    $db->beginTransaction();

        $sql = "insert into asiakas (asnimi, email, lahiosoite, postinro) values ('$nimi','$email','$lahiosoite','$postinro')";

        $asnro = executeInsert($db,$sql);
    
    $sql = "insert into tilaus (asnro) values ($asnro)";
    $tilausnro = executeInsert($db,$sql);

    $rivinro = 1;
    foreach ($tilaus as $tuote) {
        $sql = "insert into tilausrivi (tilausnro,rivinro,tuotenro,kpl) values ($tilausnro,$rivinro,$tuote->tuotenro,$tuote->amount)";
        executeInsert($db,$sql);
        $rivinro++;
    }

    $db->commit();
    header('HTTP/1.1 200 OK');
    $data = array('asnro' => $asiakasnro);
    echo json_encode($data);   

} catch (PDOException $pdoex) {
    $db->rollback();
    returnError($pdoex);
}