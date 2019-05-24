<?php 
try {
  $db = new PDO('mysql:host=localhost;dbname=juice_insta;charset=utf8mb4', 'juice_vampire', 'upinsmoke2013');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);  
} catch (PDOException $e) {
  echo "Connection failed : ". $e->getMessage();
}
?>