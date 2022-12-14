<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

//ylläpitäjä voi lisätä uuden kategorian
$input = json_decode(file_get_contents('php://input'));
$newcategory = filter_var($input->newcategory,FILTER_UNSAFE_RAW);

$db = null;

try {
    $db = openDB();
    $db -> beginTransaction();
    //lisätään kategoria
    $sql = "insert into category (name) values
    ('" .
    filter_var($newcategory,FILTER_UNSAFE_RAW)

.    "')";

$category_id = executeInsert($db,$sql);
$db->commit();

header('HTTP/1.1 200 OK');
$data = array('id' => $category_id);
echo json_encode($data);
}
catch ( PDOException $pdoex) {
    $db->rollback();
    returnError($pdoex);
}