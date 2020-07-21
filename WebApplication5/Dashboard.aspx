<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication5.Dashboard" %>

<%@ Register Src="~/UserControl/UCScripts.ascx" TagPrefix="uc1" TagName="UCScripts" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
   
    <title>TO DO LIST</title>

   
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
     <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/bootstrap-duallistbox.min.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" />
    <link rel="stylesheet" href="assets/css/select2.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main_ace_style" />

    <!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
    <link rel="stylesheet" href="assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->


    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
         <nav runat="server">
    <nav class="navbar navbar-inverse" >

        <div class="navbar-header">
            <a class="navbar-brand" href="Dashboard.aspx">WELCOME TO TODOLIST </a>
        </div>

        <ul class="nav navbar-nav">

            <li><a href="Dashboard.aspx"><span class="glyphicon glyphicon-home"></span>DASHBOARD</a></li>
            <li><a href="list.aspx"><span class="glyphicon glyphicon-tasks"></span>YOUR LIST</a></li>


        </ul>
       <div class="navbar-buttons navbar-header pull-right hidden-sm hidden-xs" role="navigation" runat="server">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-hashpopup="true" aria-expanded="false">
                  
                        <i class="glyphicon glyphicon-user"></i><asp:Label runat="server" ID="username"></asp:Label>
                                <span class="caret"></span>
                    </>
                    <ul class="dropdown-menu">
                        <li>
                            <asp:LinkButton ID="Lnkbtn1" runat="server" data-toggle="modal" data-target="#myModal" OnClick="Lnkbtn1_click"><i class="ace-icon fa fa-lock bigger-120 green"></i> Change Password </asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="Lnkbtn2" runat="server" data-toggle="modal" data-target="#mdl2"  ><i class="ace-icon fa fa-user bigger-120 green"></i> Edit Profile</asp:LinkButton>

                        </li>
                        <li>
                            <asp:LinkButton OnClick="Logout_click" CssClass="glyphicon glyphicon-off" ID="LinkButton1" runat="server">Logout!!!(See u again)</asp:LinkButton>

                        </li>
                    </ul>
                </li>
            </ul>

        </div>


    </nav>
</nav>
         <div class="modal fade" id="mdl2" tabindex="-1" role="dialog" aria-labelledby="mdl2label">

            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span>&times;</span></button>
                        <h4 class="modal-title" id="mdl2Label2">Edit Profile</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">

                            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">

                            <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button id="Btnclose2" onclick="Btnclose2_click" type="button" class="btn btn-default"
                            data-dismiss="modal">
                            Close
                        </button>
                        <asp:Button ID="btnsave2" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnsave2_click"></asp:Button>

                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span>&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change password</h4>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text=" Old password"></asp:Label>
                            <asp:TextBox ID="txtold1" TextMode="Password" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="New password"></asp:Label>
                            <asp:TextBox ID="txtnew1" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Repeat New password"></asp:Label>
                            <asp:TextBox ID="txtnew2" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                            data-dismiss="modal">
                            Close
                        </button>
                        <asp:Button ID="btnsave1" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnsave1_click"></asp:Button>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="mdlPassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span>&times;</span></button>
                        <asp:Label ID="Label8" Style="color: lightseagreen" runat="server" Text="Successful!"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="mdlPassError" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                </div>
            </div>
        </div>

    </form>
    <uc1:UCScripts runat="server" id="UCScripts" />
</body>
</html>
