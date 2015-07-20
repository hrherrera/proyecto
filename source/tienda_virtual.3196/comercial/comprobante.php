<? session_start();
include("GestionBD.php");
$obj=new GestionBD();
$cn=$obj->conectar();
$_SESSION["n"]++;
//echo "session N° ".$_SESSION["n"]."<br>";
if($_SESSION["n"]==1){
$cadena="Select nrofac from facturas order by nrofac desc";
$rs=$obj->ejecutarConsulta($cadena);
$fila=mysql_fetch_array($rs);
$nrofact=$fila[0]+1;

$nuevonro=str_pad($nrofact,6,0,0);
$_SESSION['nf']=$nuevonro;
}

$hoy=date("Y-m-d");
$vcodcli=substr($_SESSION['ope'],14,3);

$cadena2="Select sum(total) from carrito where codope='".$_SESSION['ope']."'";
$rs2=$obj->ejecutarConsulta($cadena2);
$fila2=mysql_fetch_array($rs2);
$total=$fila2[0];

$cadena3="Select * from carrito where codope='".$_SESSION['ope']."'";
$rs3=$obj->ejecutarConsulta($cadena3);

$cadena4="Select * from clientes where codcli='".$vcodcli."'";
//echo $cadena4;
$rs4=$obj->ejecutarConsulta($cadena4);
$fila4=mysql_fetch_array($rs4);

$vapecli=$fila4[1];
$vnomcli=$fila4[2];
$vdircli=$fila4[3];
$vruccli=$fila4[5];


//

$cad5="select sum(total)from carrito where codope='".$_SESSION['ope']."'";
$rs5=$obj->ejecutarConsulta($cad5);
$fila5=mysql_fetch_array($rs5);
$total=$fila5[0];
$st=($total)/1.19;
$igv=$total-$st;

if($_SESSION["n"]==1){
	$codven='02';
$cadena="insert into facturas values('".$_SESSION['nf']."','".$vcodcli."','".$hoy."','".number_format($st,2)."','".number_format($igv,2)."','".number_format($total,2)."','".$codven."')";
$rscadena=$obj->ejecutarActualizacion($cadena);
}

$cadenadf="Select * from detalles where codope='".$_SESSION["ope"]."'";
$rsdf=$obj->ejecutarConsulta($cadenadf);
//echo $cadenadf;
//echo $rsdf;
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.Estilo4 {
	font-size: 18px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
<head>
<script type="text/javascript"> 
function alerta(){
alert('desea imprimir')
print();
window.close();

}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Documento sin t&iacute;tulo</title>
<style type="text/css">
<!--
body {
	background-color: #CCCCCC;
}
.Estilo3 {
	font-size: 22px;
	color: #000000;
}
.Estilo6 {color: #000000; font-weight: bold; }
.Estilo11 {color: #000000; font-weight: bold; font-size: 28px; }
.Estilo12 {color: #000000}
.Estilo13 {font-size: 22px}
-->
</style>
</head>

<body>
<p align="left" class="Estilo11">Comprobante de Pago</p>

<hr />
<form id="form1" name="form1" method="post" action="">

  <table width="598" border="0" align="center">
    <tr>
      <td width="163">&nbsp;</td>
      <td width="180">&nbsp;</td>
      <td width="120" rowspan="6">&nbsp;</td>
      <td width="117" bgcolor="#000000"><div align="center" class="Estilo4">N&ordm; Factura</div></td>
    </tr>
    <tr>
      <td><span class="Estilo6">C&oacute;digo Cliente : </span></td>
      <td><label>
        <input name="txtcodcli" type="text" id="txtcodcli" value="<? echo $vcodcli; ?>" size="30" readonly="true"/>
      </label></td>
      <td><div align="center" class="Estilo3"><? echo $_SESSION['nf']; ?></div></td>
    </tr>
    <tr>
      <td><span class="Estilo6">Apellidos y Nombres : </span></td>
      <td><input name="txtapecli" type="text" id="txtapecli" value="<? echo $fila4[1]." ".$fila4[2]; ?>" size="30" readonly="true"/></td>
      <td><label></label></td>
    </tr>
    <tr>
      <td><span class="Estilo6">Direcci&oacute;n : </span></td>
      <td><input name="txtdircli" type="text" id="txtdircli" value="<? echo $fila4[3]; ?>" size="30" readonly="truw" /></td>
      <td rowspan="3"><b><div align="center"></div></b>
        <div align="center"></div>
      <div align="center"></div>        <div align="center"></div></td>
    </tr>
    <tr>
      <td height="21"><span class="Estilo6">Ruc : </span></td>
      <td><input name="txtruccli" type="text" id="txtruccli" value="<? echo $fila4[5]; ?>" size="30" readonly="true" /></td>
    </tr>
    <tr>
      <td height="21"><span class="Estilo6"> Fecha : </span></td>
      <td><b><div>
        <label>
        <input name="txtfecha" type="text" id="txtfecha" size="30" value="<? echo $hoy; ?>" readonly="true"/>
        </label>
      </div>
      </b></td>
    </tr>
  </table>
  <br />
  	<table width="600" border="1" align="center" bordercolor="#000000">
      <tr>
        <td width="21"><div align="center"></div></td>
        <td width="108"><div align="center"><strong>Codproducto</strong></div></td>
        <td width="199"><div align="center"><strong>Nombre del Producto</strong></div></td>
        <td width="71"><div align="center"><strong>Cantidad</strong></div></td>
        <td width="85"><div align="center"><strong>Precio</strong></div></td>
        <td width="76"><div align="center"><strong>Total</strong></div></td>
      </tr>
  	  <?
	while($filadf=mysql_fetch_array($rsdf)){ //inicio del while
		$f++;  //cuenta las filas
		if($f%2==0)  //si la fila es par
		{echo "<tr bgcolor=white>"; }
		else { echo "<tr bgcolor=white>"; }
		
		echo"<td><INPUT TYPE=checkbox name=chk$f value=".$fila[0]."></td>";
		echo "<td align=center>".$filadf[1]."</td>";
		echo "<td align=center>".$filadf[2]." - ".$filadf[3]."</td>";
		echo "<td align=center>".$filadf[4]."</td>";
		echo "<td align=right>".$filadf[5]."</td>";
		echo "<td align=right>".$filadf[6]."</td>";

if($_SESSION["n"]==1){		
$cadenadetalle="insert into detfac values('".$_SESSION['nf']."','".$filadf[1]."','".$filadf[4]."','".$filadf[6]."')";
$obj->ejecutarActualizacion($cadenadetalle);
	}
$cadenaActualiza="Update producto set stockpro=stockpro-'".$filadf[4]."' where codpro='".$filadf[1]."'";
$obj->ejecutarActualizacion($cadenaActualiza);
	
	}//fin del while
	
$cadenaEliminar="Delete from carrito where codope='".$_SESSION['ope']."'";
$obj->ejecutarActualizacion($cadenaEliminar);
	
	?>
  </table>
  
    <table width="608" border="0" align="center">
      <tr>
        <td width="283">&nbsp;</td>
        <td width="136"><label></label></td>
        <td width="180"><table width="177" border="1" align="right" bordercolor="#000000">
          <tr>
            <td bgcolor="#CCCCCC" width="84"><span class="Estilo19"><strong>Total:</strong></span></td>
            <td width="77"><div align="right" class="Estilo12"><span class="Estilo13"><?php echo number_format($total,2);?></span></div></td>
          </tr>
          <tr>
            <td bgcolor="#CCCCCC"><span class="Estilo19"><strong>IGV:</strong></span></td>
            <td><div align="center" class="Estilo6">
                <div align="right"><strong><?php echo number_format($igv,2);?></strong></div>
            </div></td>
          </tr>
          <tr>

            <td bgcolor="#CCCCCC"><span class="Estilo19"><strong>SubTotal:</strong></span></td>
            <td><div align="center" class="Estilo6">
                <div align="right"><?php echo number_format($st,2);?></div>
            <div align="justify"></div><div align="right"></div><div align="right"></div></div></td>
          </tr>
        </table></td>
      </tr>

    </table>

   <p>&nbsp;</p>
<input type="submit" value="imprimir Factura" onclick="alerta()">
</form>
<p>&nbsp; </p>
<p><a href="ListaClientes.php">Regresar a Listado de Clientes</a> <b></b></p>
</body>
</html>