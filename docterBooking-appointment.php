<?php
session_start();
//error_reporting(0);
include('doctor/includes/dbconnection.php');

?>
<!doctype html>
<html lang="en">
    <head>
        <title>Doctor Appointment Management System || Home Page</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/owl.carousel.min.css" rel="stylesheet">

        <link href="css/owl.theme.default.min.css" rel="stylesheet">

        <link href="css/templatemo-medic-care.css" rel="stylesheet">

        <link href="imgCss/specilization.css" rel="stylesheet">
        <script>
function getdoctors(val) {
     alert(val);
$.ajax({

type: "POST",
url: "get_doctors.php",
data:'sp_id='+val,
success: function(data){
$("#doctorlist").html(data);
}
});
}
</script>
    </head>
    
    <body id="top">
    
        <main>

            <?php include_once('includes/header.php');?>

          
            <?php include_once('includes/header.php');?>

            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="images/slider/s1.jpg" class="img-fluid" alt="" width="1500">
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/s2.jpg" class="img-fluid" alt="" width="1500">
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/s3.jpg" class="img-fluid" alt="" width="1500" hight="700">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </section>

<center>
            
<div class="card">

<div class="image">
    <a href="(02)Cardiologist.php"><img id="myImg" src="images\specilization\Cardiologist.jpg"></a>
</div>
<div class="title">
 <h1>
 Cardiologist</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(03)Dermatologist.php"><img id="myImg" src="images\specilization\Dermatologist.jpg"></a>
</div>
<div class="title">
 <h1>
 Dermatologist</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(04)Neurologist.php"><img id="myImg" src="images\specilization\Neurologist.jpg" hight="200"></a>
</div>
<div class="title">
 <h1>
 Neurologist</h1>
</div>
</div>


<div class="card">

<div class="image">
    <a href="(01)Paediatrician.php"><img id="myImg" src="images\specilization\Pediatrician.jpg"></a>
</div>
<div class="title">
 <h1>
 Paediatrician</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(05)Psychiatrist.php"><img id="myImg" src="images\specilization\Psychiatrist.jpg"></a>
</div>
<div class="title">
 <h1>
 Psychiatrist</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(06)Radiologist.php"><img id="myImg" src="images\specilization\Radiologist.jpg"></a>
</div>
<div class="title">
 <h1>
 Radiologist</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(07)Anesthesiologist.php"><img id="myImg" src="images\specilization\Anesthesiologist.jpg"></a>
</div>
<div class="title">
 <h1>
 Anesthesiologist</h1>
</div>
</div>

<div class="card">

<div class="image">
    <a href="(08)Endocrinologist.php"><img id="myImg" src="images\specilization\Endocrinologist.jpg"></a>
</div>
<div class="title">
 <h1>
 Endocrinologist</h1>
</div>
</div>

<div class="card">

</center>

</table></div>
</div>
</div>
</section>
             
        </main>
        <?php include_once('includes/footer.php');?>
        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/scrollspy.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>