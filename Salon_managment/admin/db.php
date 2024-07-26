<?php 
$connection = mysqli_connect('localhost','root','','salon');
if(! $connection){
 echo "Database connection error";
}