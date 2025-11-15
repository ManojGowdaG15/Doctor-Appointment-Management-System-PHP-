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
        
        <link href="imgCss/doctor.css" rel="stylesheet">

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
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
    </head>
    
    <body id="top">
    
        <main>

            <?php include_once('includes/header.php');?>

          
            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="images/Psychiatrist[images]/PsychiatristBanner.jpeg" class="img-fluid" alt="" width="1500">
                                    </div>

            

                                    
            </section>

            <center>
            
<div class="card">

<div class="image">
<img id="myImg" src="images/Psychiatrist[images]/Dr. Anand Jayaraman.jpg">
</div>
<div class="title">
 <h1>Dr. Anand Jayaraman</h1>
 <p>MBBS, MRCPsych Psychiatrist<br>
10+ years experience overall</p>
    <h6 style="color:green">Availability :</h6>
    <p>Monday &nbsp; to &nbsp; Friday<br>
    11:00 Am &nbsp; to &nbsp; 6:00 PM
    </p>
</div>
</div>
</div>

<div class="card">

<div class="image">
    <img id="myImg" src="images/Psychiatrist[images]/Dr. Meena Gnanasekharan.jpg">
</div>
<div class="title">
 <h1>Dr. Meena Gnanasekharan</h1>

 <p>MBBS, CCT- Child and Adolescent Psychiatry, M.D. (Psychiatry)<br>
6+ years experience overall</p>
    <h6 style="color:green">Availability :</h6>
    <p>Monday &nbsp; to &nbsp; Wednesday<br>
    11:00 Am &nbsp; to &nbsp; 6:00 PM
    </p>
</div>
</div>

<div class="card">

<div class="image">
    <img id="myImg" src="images/Psychiatrist[images]/Dr. Sarika Manoli.jpg">
</div>
<div class="title">
 <h1>Dr. Sarika Manoli</h1>

 <p>MBBS, M.D. (Psychiatry) Psychiatrist<br>
9+ years experience overall</p>
    <h6 style="color:green">Availability :</h6>
    <p>Monday &nbsp; to &nbsp; Friday<br>
    9:30 Am &nbsp; to &nbsp; 7:30 PM
    </p>
</div>
</div>



<div class="card">

<div class="image">
    <img id="myImg" src="images/Psychiatrist[images]/Dr. Kaustubh Gosavi.jpg">
</div>
<div class="title">
 <h1>Dr. Kaustubh Gosavi</h1>

 <p>MBBS, M.D. (Psychiatry) Psychiatrist,Neuropsychiatrist<br>
10+ years experience overall</p>
    <h6 style="color:green">Availability :</h6>
    <p>Monday &nbsp; to &nbsp; Friday<br>
    10:00 Am &nbsp; to &nbsp; 6:00 PM
    </p>
</div>
</div>






</center>


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