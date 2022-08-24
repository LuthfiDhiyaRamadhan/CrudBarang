<center>
<table border=1>
    <tr>
        <th>NO</th>
        <th>KODE BARANG</th>
        <th>NAMA BARANG</th>
        <th>HARGA</th>
        <th>STOK</th>
        <th>TOTAL</th>
        <th>DISKON</th>
    </tr>
<?php
$conn=mysqli_connect("localhost","root","","if6");
$sql="select * from barang";
$hasil=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($hasil);
$n=1;
$jumlah=0;
do{
    list($kodebrg,$namabarang,$harga,$stok)=$row;
    $total=$harga*$stok;
    $diskon=$total*0.1;
    $jumlah=$jumlah+$total;
    echo"
    <tr>
    <td>$n</td>
    <td>$kodebrg</td>
    <td>$namabarang</td>
    <td>$harga</td>
    <td>$stok</td>
    <td>$total</td>
    <td>$diskon</td>
    </tr>";
$n++;
}
while($row=mysqli_fetch_row($hasil));
echo"<tr>
<td colspan=5>TOTAL KESELURUHAN</td>
<td>$jumlah</td>
</tr>";
?>
</table>
</center>