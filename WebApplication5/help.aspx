<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="WebApplication5.help" %>

<%@ Register Src="~/UserControl/UserControlMenu.ascx" TagPrefix="uc1" TagName="UserControlMenu" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />

    <style>
        #myBtn {
            display: none; /* Hidden by default */
            position: fixed; /* Fixed/sticky position */
            bottom: 20px; /* Place the button at the bottom of the page */
            right: 30px; /* Place the button 30px from the right */
            z-index: 99; /* Make sure it does not overlap */
            border: none; /* Remove borders */
            outline: none; /* Remove outline */
            background-color: tomato; /* Set a background color */
            color: white; /* Text color */
            cursor: pointer; /* Add a mouse pointer on hover */
            padding: 15px; /* Some padding */
            border-radius: 10px; /* Rounded corners */
            font-size: 18px; /* Increase font size */ 
        }
        
            #myBtn:hover

            {
                background-color: #555; /* Add a dark-grey background on hover */
            }
    </style>


    <title>Bootstrap ME GUSTA!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
    <uc1:UserControlMenu runat="server" ID="UserControlMenu" />

    <style>
        .jumbotron {
            background: url(img.html/cosmic.jpg);
            background-size: 100% 100%;
            padding: 200px 150px;
        }

        body {
            background-color: #635959;
        }
    </style>

    <form class="jumbotron">
        <div class=" text-center ">
            <h1 style="color: Tomato;">YOUR ORGANIZER  </h1>
            <h3 style="color: tomato;">We believe in organize.</h3>



            <button onclick="location.href='signup.aspx' " type="button" class="btn btn-danger">REGISTER</button>
        </div>
    </form>
    <div style="background-image: url(img.html/plan.jpg); background-size: 100% 100%; color: #2f051b;">
        <div class="container-fluid jumbotron-text-center" id="about-page">
            <h1>About Page</h1>
            <h4>This TODOLIST Application is made by Başak Fulya KARADUMAN who is a computer engineering student for everyone's life make easier.</h4>
            <h4>You can contact with me via your email from contact page.</h4>
            <h4>See also HomePage</h4>
            <h4>Please welcome to the best TODOLIST site all over the world.</h4>
            <button onclick="location.href='contact.aspx'" class="btn btn-default btn-lg">Get in Touch</button>

        </div>

        <div class="container-fluid bg-grey">
            <h2>Our Values</h2>
            <h4><strong>MISSION : </strong>Our mission to help you to organize your life better than before know us.</h4>
            <h4><strong>VISION :</strong>Our vision is improve us to make your life easier day by day. </h4>
        </div>
    </div>

    <style>
        .container-fluid 
        {
            padding: 60px 500px;
        }
    </style>
    <div class="container-fluid text-center">
        <h2>SERVICES</h2>
        <h4>What we offer</h4>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-off"></span>
                <h4>POWER</h4>
                <p>Power of TODOLIST application is ENDLESS.Wish you all have a POWERFULL day from BFK</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-heart"></span>
                <h4>LOVE</h4>
                <p>We need love to do all work.Love is everyhting to success what we want.</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-lock"></span>
                <h4>JOB DONE</h4>
                <p>We wanna help you for your all life to make easier it and that is why this site created by me.</p>
            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-leaf"></span>
                <h4>GREEN</h4>
                <p>The nature is the first thing that we want to save so we created this site to prevent to kill trees.</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-certificate"></span>
                <h4>CERTIFIED</h4>
                <p>This site is designed by BAŞAK FULYA KARADUMAN(BFK)</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-wrench"></span>
                <h4>HARD WORK</h4>
                <p>Hard working is a part of our life in your job,at your home or anything you have to do it.</p>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="copyright text-center">
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright ©<script>document.write(new Date().getFullYear());</script>
        All rights reserved | This site is made<i class="fa fa-heart-o" aria-hidden="true"></i> by <a>BAŞAK FULYA KARADUMAN</a>
    </div>



    <button onclick="topFunction()" id="myBtn" title="Go Up">UP</button>
    <script>


        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
        }
    </script>

</body>




</html>
