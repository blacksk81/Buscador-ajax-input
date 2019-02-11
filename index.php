<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Page Title</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="jquery-3.3.1.js"></script>
  <link rel="stylesheet" type="text/css" media="screen" href="jquery-ui.css">
  <script src="jquery-ui.js"></script> 
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  
</head>
<body>
<!-- https://www.youtube.com/watch?v=8EgT0hIKJS8 -->

<?php 
include 'bd.php';

	$consulta = "SELECT * FROM hostel";
  $result = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");
  $array = array();
  while ($row = mysqli_fetch_array( $result ))
    {
      $name = utf8_encode($row['nombre']);
      array_push($array, $name);
  }
  error_reporting(0);
	// mysqli_close( $conexion );
?>

  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3 mt-5">
      <form action="#" method="post">
        <div class="form-group">
          <input type="text" name="buscarHotel" class="form-control" id="tag" placeholder="Busca tu Pais" >
        </div>
        <!-- <button type="submit" class="btn btn-primary">Check</button> -->
        <input class="btn btn-primary" type="submit" value="buscar">
      </div>
      </form>
    </div>
  </div>

<?php 
$registros=mysqli_query($conexion,"SELECT * from hostel where nombre='$_POST[buscarHotel]'") or
die("Problemas en el select:".mysqli_error($conexion));

if ($reg=mysqli_fetch_array($registros)){ ?>
   
<div class="container">
  <div class="row">
    <div class="col-md-6 offset-md-3 mt-5">
      <p><?php echo $reg['nombre']?></p> 
      <div class="card">
        <div class="card-body"><?php echo $reg['msn']?></div>
      </div>
    </div>
    <div class="row mx-auto mt-2">
      <?php echo $reg['mapa']?>
    </div>
  </div>
</div>
<?php } ?>


  <script>
    $(document).ready(function(){

      var items = <?=  json_encode($array) ?>

      $("#tag").autocomplete({
        source: items,
        // select: function (event, nombre) {
        //   //console.table(nombre);
        //   var params = {
        //     hostel: nombre
        //   };
        //   $.get("hostel.php", params, function(response) {
        //     //body
        //     // var json ) JSON.parse(response);
        //     // if (json.status == 200) {
        //     //   $("#name").html(json.nombre);
        //     //   $("#mapa").html(json.mapa);
        //     // }else{

        //     // }

        //   }); //ajax
        // } // select
      });
    });
  </script>
</html>