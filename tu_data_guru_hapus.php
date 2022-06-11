<?php
    include_once('config.php');
    $id =$_GET['id'];
    $query = mysqli_query($kon, "delete from data_guru where id ='$id'");
    if ($query){
        echo "Berhasil Hapus";
    } else{
        echo "Gagal Hapus";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hapus</title>
</head>
<body>
    <br>
    <br>
    <a href="tu_data_guru.php"<button type="button">Daftar Guru</button></a>
</body>
</html>