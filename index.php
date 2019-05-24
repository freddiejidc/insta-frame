<?php
setcookie("testcookie", "value1hostonly", time(), "/", ".juiceindacity.com/sample/instagood", 0, true);
?>
<?php
    //set each visitors session
    $_SESSION['username'] = "Admin";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' type='text/css' media='screen' href='css/main.css'>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body><center>
<div class="header">
  <h1>Company Logo</h1>
  <p><br></p>
</div>
<?php 
            // form for info and data input/upload for members
            if (isset($_SESSION['username']))  {
                echo '<div class="bg-img">
                <form action="upload.php" method="post" class="container" enctype="multipart/form-data">
                <input type="text" name="filename" placeholder="File name..." required>
                <input type="text" name="filetitle" placeholder="Image title..." required>
                <input type="text" name="filedesc" placeholder="Image description..." required>
                <input type="file" name="file" required>
                <button type="submit" name="submit" class="btn">UPLOAD</button>
                </form>
            </div>';
            }   
           
            ?>
    <main>

    <section class= "gallery-links">
        <div class="wrapper">
            <h2><br></h2>

            <div class="gallery-container">
                <?php
require_once 'includes/config.php';
 
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
 
    $sql = 'SELECT * FROM gallery ORDER BY idGallery DESC';
 
    $q = $pdo->query($sql);
    $q->setFetchMode(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Could not connect to the database $dbname :" . $e->getMessage());
}
?>
                <?php 
                
                while ($row = $q->fetch()): 
                    echo '<a href="#">
                                        
                            <div class="gallery" style= "background-image: url(img/gallery/'.$row["imgFullNameGallery"].');"></div>
                            <img src = img/gallery/'.$row["imgFullNameGallery"].'>
                            <h3>'.$row["titleGallery"].'</h3>
                            <p>'.$row["descGallery"].'</p>
                        </a>';
                    ?>
                    <?php endwhile; ?>

            </div>
            
        </div>
    </section>
        </center></body>
</html>