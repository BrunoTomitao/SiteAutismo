<?php

$servidor ="localhost";
$usuario = "root";
$senha ="";
$banco= "autismo"; 

try {
    $pdo = new PDO("mysql:host={$servidor};dbname={$banco};port=3306;charset=utf8;",$usuario,$senha); //o que vai realmente se conectar ao banco


} catch (\Exception $e) {
    echo"erro ao se conectar";
    echo $e->getMessage();
}
