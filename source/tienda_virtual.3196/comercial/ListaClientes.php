<? session_start();
include("GestionBD.php");
   $obj=new GestionBD();
   $cn=$obj->conectar();
   $cad="Select * from clientes order by codcli";
   $rs=$obj->ejecutarConsulta($cad);
   
   $_SESSION["nuevaope"]=1; //Nueva operacion 
   $_SESSION["contador"]=0; 
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista de Clientes</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="plantilla.css" rel="stylesheet" type="text/css">
</head>

<body>
<span class="Titulo">Busqueda de Clientes</span>
<hr> 
<table align="center" border="1" bordercolor="#FFFFFF" class="table">
<tr>
    <th>Apellidos</th>
    <th>Nombres</th>
    <th>R.U.C.</th>
    <th>Distrito</th>
    <th>Direccion</th>
    <th>Telefono</th>
</tr>
<?
while($fila=mysql_fetch_array($rs)){
	$f++;
	if($f%2==0)
	 {echo "<tr class=par onMouseOver=this.style.backgroundColor='#6FF'; style='border-color:#F00; cursor:pointer;' onMouseOut=this.style.backgroundColor='';>";}
	else
	 {echo "<tr class=impar onMouseOver=this.style.backgroundColor='#6FF'; style='border-color:#F00; cursor:pointer;' onMouseOut=this.style.backgroundColor='';>";}
	echo "<td><a href=ventas1.php?cod=".$fila[0].">".$fila[1]."</a></td>";
	echo "<td>".$fila[2]."</td>";
	echo "<td>".$fila[5]."</td>";
	echo "<td>".$fila[4]."</td>";
	echo "<td>".$fila[3]."</td>";
	echo "<td>".$fila[6]."</td>";
	echo "</tr>";
}
?>
</table>
</body>
</html>