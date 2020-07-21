<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlMenu.ascx.cs" Inherits="WebApplication5.UserControl.UserControlMenu" %>
<nav>
    <nav class="navbar navbar-inverse">

        <div class="navbar-header">
            <a class="navbar-brand" href="help.aspx">WELCOME TO TODOLIST </a>
        </div>

        <ul class="nav navbar-nav">

            <li><a href="help.aspx"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
            <li><a href="#about-page">ABOUT</a></li>
            <li><a href="contact.aspx">CONTACT</a></li>
            <li><a href="list.aspx"><span class="glyphicon glyphicon-tasks"></span>YOUR LIST</a></li>


        </ul>
        <ul class="nav navbar-nav navbar-right ">




            <li><a href="signup.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
            <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
            <i class="material-icons" style="font-size:48px;color:red"></i>

        </ul>


    </nav>
</nav>
