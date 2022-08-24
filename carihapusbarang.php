<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="savehapusbarang.php" method="post">
<table border=1>
<?php
$kodebrg=$_POST['kodebrg'];
$conn=mysqli_connect("localhost","root","","if6");
$sql="select * from barang where kodebrg='$kodebrg'";
$hasil=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($hasil);

do{
    list($kodebrg,$namabarang,$harga,$stok)=$row;
    echo"<tr>
    <td>KODE BARANG</td>
    <td><input name='kodebrg' value='$kodebrg' size=5 readonly></td>
    </tr>";
    echo"<tr>
    <td>NAMA BARANG</td>
    <td><input name='namabarang' value='$namabarang' size=30 readonly></td>
    </tr>";
    echo"<tr>
    <td>HARGA</td>
    <td><input name='harga' value='$harga' size=30 readonly></td>
    </tr>";
    echo"<tr>
    <td>STOK</td>
    <td><input name='stok' value='$stok' size=30 readonly></td>
    </tr>";
    

}
while($row=mysqli_fetch_row($hasil));

?>
</table>
<hr>
<input type="submit" value=Hapus>
<input type="reset" value=Reset>
</form>
</body>
</html>

 