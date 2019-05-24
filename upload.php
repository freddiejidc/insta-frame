<?php
  if (isset($_POST['submit']))  {
    
    $newFileName = $_POST['filename'];
    if (empty($newFileName)) {
        $newFileName = "gallery";
    } else {
       $newFileName = strtolower(str_replace(" ", "-", $newFileName));
    }
    $imageTitle = $_POST['filetitle'];
    $imageDesc = $_POST['filedesc'];
    
    $file = $_FILES['file'];

   // for testing print_r($file);

   $fileName = $file["name"];
   $fileType = $file["type"];
   $fileTempName = $file["tmp_name"];
   $fileError = $file["error"];
   $fileSize = $file["size"];

    $fileExt = (explode(".", $fileName));
    $fileActualExt = strtolower(end($fileExt));

    $allowed = array("jpg", "jpeg", "png");

    if (in_array($fileActualExt, $allowed)) {
        if ($fileError === 0) {
            if ($fileSize < 20000000) {
               $imageFullName = $newFileName . "." . uniqid("", true) . "." . $fileActualExt;
                $fileDestination = "img/gallery/" . $imageFullName;
               
               
                require_once 'includes/config.php';
                
                 try
                {
                    
                 $DB_con = new PDO("mysql:host={$DB_host};dbname={$DB_name}",$DB_user,$DB_pass);
                 $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                 
                    
                    
                    $stmt = $DB_con->prepare("INSERT INTO gallery(titleGallery, descGallery, imgFullNameGallery) VALUES(:filetitle, :filedesc, :file)");
                    $stmt->bindparam(":filetitle",$imageTitle);
                    $stmt->bindparam(":filedesc",$imageDesc);
                    $stmt->bindparam(":file",$imageFullName);
                    $stmt->execute();
                move_uploaded_file($fileTempName, $fileDestination);
                header("Location: ../instagood/index.php?upload-success");
                    
                }
                catch(PDOException $e)
                {
                 echo $e->getMessage();
                }
               
            } else {
                echo "File Size is too big!";
                exit();
            }
        } else {
            echo "You had an error!";
            exit();
        }
    
    } else {
    echo "You need to upload a proper file type!";
    exit();

    }

}