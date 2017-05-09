<?php
require('fpdf.php');

class PDF extends FPDF
{
function header()
{
$this->Image('2.jpeg',16,10,33);
$this->SetFont('arial','B',15);
$this->Cell(50);
$this->Cell(80,10,'Monitores Registrados',0,0,'C');
$this->Ln(15);
$this->Cell(80,10,'_____________________________________________________________________________________________________________',0,0,'C');
$this->Ln(15);
}
function Footer()
{
$this->SetY(-10);
$this->SetFont('Arial','I',8);
$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}
$pdf=new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();


$conexion=mysql_connect("localhost","root","123") or die("problema con el servidor");
mysql_select_db("prueba",$conexion) or die ("no selecciona la base de datos");

$consulta = mysql_query("SELECT * FROM monitor",$conexion);
while($resultado = mysql_fetch_array($consulta)){

$pdf->Cell(45,5,$resultado['clave'],1,0,'C');
$pdf->Cell(45,5,$resultado['marca'],1,0,'C');
$pdf->Cell(45,5,$resultado['modelo'],1,0,'C');
$pdf->Cell(45,5,$resultado['num_serie'],1,0,'C');
$pdf->Ln();
}
$pdf->Output();
?>
