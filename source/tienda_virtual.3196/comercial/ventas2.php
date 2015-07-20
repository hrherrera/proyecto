<? session_start();
include("GestionBD.php");
$obj=new GestionBD();
$cn=$obj->conectar();
$cad="select * from clientes where codcli='".substr($_SESSION["ope"],14,3)."'";
$rsc=$obj->ejecutarConsulta($cad);
$filac=mysql_fetch_array($rsc);
$vcodproducto=$_GET["codpro"];
//echo $vcodproducto."<br>";
//precio unitario
$pu="select * from producto where codpro='".$vcodproducto."'";
$rspu=$obj->ejecutarConsulta($pu);
$filapu=mysql_fetch_array($rspu);
//echo $filapu[4]."<br>";
//insertar 
//$cadinsertar="Insert into carrito values('".$_SESSION["ope"]."','".$vcodproducto."',1,'".number_format($filapu[4],2)."')";
//echo  $cadinsertar;
//$obj->ejecutarActualizacion($cadinsertar);

$cad4="Select * from carrito where codope='".$ope."' and codpro='".$vcodproducto."'";
$rs4=$obj->ejecutarConsulta($cad4);
if(mysql_num_rows($rs4)==0){
$cadinsertar="Insert into carrito values('".$_SESSION["ope"]."','".$vcodproducto."',1,'".number_format($filapu[4],2)."')";
$obj->ejecutarActualizacion($cadinsertar);
} else {
?>
<script languaje="javascript">
//alert("Este producto ya existe...");
</script>
<? } ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ventas  DOS</title>
<link href="plantilla.css" rel="stylesheet" type="text/css" />
</head>

<body>
<p class="titulo">Seleccionados</p>
<hr />
<form id="form1" name="form1" method="post" action="">
  <table width="385" border="0">
    <tr>
      <td width="46">Cliente:</td>
      <td width="329"><label>
        <input name="textfield" type="text" value='<? echo $filac[1]." ".$filac[2]; ?>' size="50"/>
      </label></td>
    </tr>
    <tr>
      <td>Fecha:</td>
      <td><input type="text" name="textfield2" value=<? echo date("d/m/Y"); ?> /></td>
    </tr>
    <tr>
      <td>Codope:</td>
      <td><input type="text" name="textfield3" value=<? echo $_SESSION["ope"];?>></td>
    </tr>
  </table>
</form>

<p>&nbsp;</p>

<form id="form2" name="form2" method="post" action="">
  <?
//codigo de la vista
$cadvista="select * from vista where codope='".$_SESSION["ope"]."'";
$rsvista=$obj->ejecutarConsulta($cadvista);
?>
  <table width="309" height="40" border="1">
    <tr>
      <th width="46" bgcolor="#FFFFFF"><span class="Estilo4">CodigoOperacion</span></th>
      <th width="51" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">CodProd</span></div></th>
      <th width="45" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">Nombre</span></div></th>
      <th width="45" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">Marca</span></div></th>
      <th width="45" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">Cantidad</span></div></th>
      <th width="45" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">Precio Unitario</span></div></th>
      <th width="45" bgcolor="#FFFFFF"><div align="center"><span class="Estilo4">Total</span></div></th>
    </tr>
    <?
while($filavista=mysql_fetch_array($rsvista)){
                  $f++;
				  if($f%2==0){
				  echo "<tr bgcolor=#6699FF>";} 
				  else
				  {echo "<tr bgcolor=#99CC00>";}
				  //declarar variables
                  $cp=$_GET["codope"];
				  $np=$_GET["np"];
echo "<td><a href=ventas2.php?codope=". $_SESSION["ope"]."&np=".$filavista[1].">". $filavista[0]."</a></td>";
				  echo "<td>".$filavista[1]."</td>";
				  echo "<td>".$filavista[2]."</td>";
				  echo "<td>".$filavista[3]."</td>"; 
				if(isset($_GET["codope"]) and $filavista[1]==$np) { ?>
				 <td><input type=text name=txtcant value='<?=$filavista[4]?>'></td>
				 <? }else{
				 echo "<td>".$filavista[4]."</td>";
				 }?>
				 <? echo "<td>".$filavista[5]."</td>";
				 echo "<td>".$filavista[6]."</td>";  
				 if(isset($_GET["codope"]) and $filavista[1]==$np){
				 ?>
				 <td><input type=submit name=btngrabar value=Grabar></td> <?
				 if(isset($_POST["btngrabar"])) {
				 	 echo "Se hixo clic en el boton grabar";
				  $cant=$_POST["txtcant"];
				  $punit=$filavista[5];
				  $total=$cant*$punit;
				  $cadnueva="UPDATE carrito set total=".$total.",cant=".$cant." where codope='".$_SESSION["ope"]."' and codpro='".$np."'";
				  echo $cadnueva;
				  $obj->ejecutarActualizacion($cadnueva);
				  ?>
				  <script language="javascript">
                   location.href='ventas2.php';
                   </script>
				  <?
				  }
				 }
				  echo "</tr>";
				  }		
?>

  </table>
  <p>
   
<?php
$cad3="select sum(total) from carrito where codope='".$_SESSION['ope']."'";
$rs3=$obj->ejecutarConsulta($cad3);
$fila3=mysql_fetch_array($rs3);
$total=$fila3[0];
$st=($total)/1.19;
$igv=$total-$st;
?>
  </p>
</form>
<p>&nbsp;</p>
<table border=1 align=center bgcolor="#00FF00">
<tr>
<td>total</td><td><?php echo number_format($total,2);?></td>
</tr>
<tr>
<td>igv</td><td><?php echo number_format($igv,2);?></td>
</tr>
<tr>
<td>subtotal</td><td><?php echo number_format($st,2);?></td>
</tr>
</table>
<p>&nbsp;</p>
<p><a href="ventas1.php">.:Agregar otro Producto:. </a></p>
<p><a href="comprobante.php">.:Generar Comprobante:.</a></p>
<p>&nbsp;</p>
</body>
</html>