<?php

    $servername="localhost";
    $email1="root";
    $password="";
    $dbname="db_shop";

    $connection=mysqli_connect($servername,$email1, $password,$dbname);

    if(!$connection){
        die("connection failed: ".mysqli_connect_error());
    }
    // else{
    //     echo "<script>alert('connected to DB !!')</script>";
    // }

?>