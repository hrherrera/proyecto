<? session_start();
$_SESSION["contador"]++;
//echo "contador ".$_SESSION["contador"]."<br>";
//echo "nuevaope ".$_SESSION["nuevaope"]."<br>";
 $cat=$_POST['cbocat'];
include("GestionBD.php");
$obj=new GestionBD();
$cn=$obj->conectar();
if (isset($_SESSION["ope"])){
$vcodcli=substr($_SESSION["ope"],14,3);}
else{

$vcodcli=$_GET["cod"];
}
if (isset ($vcodcli)) {
$fecha=date("d-m-Y");
}
$cad1="Select * from clientes where codcli='".$vcodcli."'";
$rs=$obj->ejecutarConsulta($cad1);
$fila=mysql_fetch_array($rs);

$rs=$obj->ejecutarConsulta("Select * from categoria");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sistema de Ventas Virtual</title>
<link href="plantilla.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="Titulo">EMISION DE COMPROBANTE DE PAGO</div>
<hr>
<form id="form1" name="form1" method="post" action="">
  <table align="center" border="2" bordercolor="#FFFFFF" cellpadding="2" cellspacing="0">
  <tr><td>
  <table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <th colspan="6">DATOS DEL CLIENTE</th>
    </tr>
    <tr>
      <td><strong class="tdtitles">Apellidos :&nbsp;</strong></td>
      <td><input name="txtape" type="text" id="txtape" value="<?=$fila[1]?>" size="35" readonly></td>
      <td><strong class="tdtitles">Distrito :&nbsp;</strong></td>
      <td><input type="text" name="txtdist" id="txtdist" value="<?=$fila[4]?>" size="35" readonly></td>
      <td><strong class="tdtitles">N&ordm; R.U.C. :&nbsp;</strong></td>
      <td><input type="text" name="txtRUC" id="txtRUC" value="<?=$fila[5]?>" size="35" readonly></td>
    </tr>
    <tr>
      <td><strong class="tdtitles">Nombres :&nbsp;</strong></td>
      <td><input type="text" name="txtnom" id="txtnom" value="<?=$fila[2]?>" size="35" readonly></td>
      <td><strong class="tdtitles">Direcci&oacute;n :&nbsp;</strong></td>
      <td><input type="text" name="txtdir" id="txtdir" value="<?=$fila[3]?>" size="35" readonly></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="center" colspan="6"><a href="ListaClientes.php"><strong>..:: Seleccionar Cliente ::..</strong></a></td>
      </tr>
  </table>
  </td></tr>
</table>
  <?
  if ($_SESSION["nuevaope"]==1 and $_SESSION["contador"]==1){
  //crear codigo de operacion
  $_SESSION["ope"]=date("Ymdhis").$_GET["cod"];
  //echo $_SESSION["ope"];
  }
  ?>
<? if($_SESSION["nuevaope"]==1 and isset($vcodcli)){?>
<br>
  <table align="center" border="2" bordercolor="#FFFFFF" cellpadding="2" cellspacing="0">
  <tr><td>
<table border="0" align="center">
    <tr>
      <th colspan="2"><span class="Estilo3">Seleccione Categoria </span></th>
    </tr>
    <tr>
      <td align="right"><strong class="tdtitles">Categoria :&nbsp;</strong></td>
      <td><select name="cbocat" id="cbocat" onchange="submit()">
          <option> --- Seleccione Categoria --- </option>
		  <?
			while($fila=mysql_fetch_array($rs)){
		if($cat==$fila[0]){
			echo "<option value='".$fila[0]."' selected>".$fila[1]."</option>";}
		else{
			echo "<option value='".$fila[0]."'>".$fila[1]."</option>";}
		}
		  ?>
		  <? while($fila2=mysql_fetch_array($rs2))
				  {$f++;
				  if($f%2==0){
				  echo "<tr bgcolor=#6539FF>";} 
				  else
				  {echo "<tr bgcolor=#99CC00>";}
				  echo "<td>".$fila2[0]."</td>";
				  echo "<td>".$fila2[1]."</td>";
				  echo "<td>".$fila2[2]."</td>";
				  echo "</tr>";
				  }
				  }
				 
				  ?>
        </select>
      </td>
    </tr>
  </table>
  </td></tr>
</table>
<br>
</form>
<table width="50%" border=0 cellpadding=2 align=center bgcolor="white">
<?
$cad2="select * from producto where codcat='".$cat."'";
$rs3=$obj->ejecutarConsulta($cad2);

while($fila3=mysql_fetch_array($rs3)){
  
	if($f%4==0)
	{echo "<tr>";}
$f++;

	echo "<td>";
	echo "<table width='200' border=0 bordercolor='black'>
		<tr>
		<center><td colspan='1' align='center'><img src='Fotos/".$fila3[7]."' width='105' height='80'></td></center>
		</tr>
		<tr>
		<td width='20%'><b>Producto: </b></td><td>".$fila3[1]."</td></tr><tr>
		<td width='20%'><b>Marca : </b></td><td>".$fila3[3]."</td></tr><tr>
		
		<tr>
		<td><b>Precio: </b></td><td>".number_format($fila3[4],2)."</td></tr>
		<td colspan='2'><a href=ventas2.php?codpro=".$fila3[0]."><img src=Fotos\addca.gif></a></td>
		</tr>
	  </table>";
	echo "</td>";

}
?>
</table>
</body>
</html>