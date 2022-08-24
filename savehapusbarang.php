<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <center>
        <h1>HAPUS BARANG</h1> 
        <table>
<?php

    $kodebrg=$_POST['kodebrg'];
    $namabarang=$_POST['namabarang'];
    $harga=$_POST['harga'];
    $stok=$_POST['stok'];

echo"
<tr>
<td>KODE BARANG</td>
<td>$kodebrg</td>
</tr>";
echo"
<tr>
<td>NAMA BARANG</td>
<td>$namabarang</td>
</tr>";
echo"
<tr>
<td>HARGA</td>
<td>$harga</td>
</tr>";
echo"
<tr>
<td>STOK</td>
<td>$stok</td>
</tr>";

$conn=mysqli_connect("localhost","root","","if6");
$sql="delete from barang where kodebrg='$kodebrg'";
$hasil=mysqli_query($conn,$sql);

?>

<hr>DATA BARANG TELAH TERHAPUS";
</table>
</center>
</body>
</html>
