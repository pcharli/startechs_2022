<?php 
header("Access-Control-Allow-Headers: Date,Server,X-Powered-By,Access-Control-Allow-Origin,Access-Control-Allow-Methods,Set-Cookie,Expires,Cache-Control,Pragma,Content-Length,Keep-Alive,Connection,Content-Type");
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Methods: POST, PUT");
header("Access-Control-Allow-Headers: *");
header("Content-Type:application/json");

if($_SERVER['REQUEST_METHOD'] == 'POST' OR $_SERVER['REQUEST_METHOD'] == 'PUT') :

if ($_SERVER['REQUEST_METHOD'] == 'POST') :
    $_POST['normal'] = true;
else if ($_SERVER['REQUEST_METHOD'] == 'PUT') :
    $json = file_get_contents('php://input');
    //décodage du format json, ça génère un object PHP
    //$objectPOST = json_decode($json);
    $POST = json_decode($json, true);
    $_POST['ajax'] = true;
endif;

print_r($_POST);

else :
    echo 'Pas de $_POST ou $_PUT';
endif;
