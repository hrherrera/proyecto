<style type="text/css">
<!--
.Estilo1 {color: #3399FF} 
-->
</style>
<?
class GestionBD {
function conectar()
{
try {
$cn=mysql_connect('localhost','root','root');
mysql_select_db('comercial3');
}
catch(Exception $ex)
{

}
return $cn;
}

function ejecutarConsulta($sql)
{
$rs=mysql_query($sql);
return $rs;
}
function ejecutarActualizacion($sql)
{mysql_query($sql); //ejecuta un comando sql
}
function generarcodigo($tabla,$campollave)
{
$cad="SELECT ".$campollave." FROM ".$tabla." ORDER BY ".$campollave." DESC LIMIT 0,1";
$rs=mysql_query($cad);
$fila=mysql_fetch_array($rs);
return str_pad($fila[0]+1,3,"0",0);
}
}
?>