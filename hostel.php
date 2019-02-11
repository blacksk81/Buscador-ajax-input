<?php 
include 'bd.php';
    $consulta = "SELECT * FROM hostel WHERE nombre = '$nombre' LIMIT  1";
    $result = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");

    if (mysql_num_rows($result) > 0 ) {
       $nombre = mysql_fetch_object($result);
       $nombre->status = 200;
       echo json_encode($nombre);
    }else{
        $error = array('status' => 400);
        echo json_encode((object)$error);
    }

?>