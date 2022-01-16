<?php
    $databaseHost = "localhost";
    $namadatabase = "sdn03gredennew";
    $username = "root";
    $password = "";
    $kon = mysqli_connect($databaseHost, $username, $password, $namadatabase);
        if (!$kon){
            die("Koneksi gagal:".mysqli_connect_error());
        }
?>