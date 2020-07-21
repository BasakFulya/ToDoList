<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.UserControl.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <style>
        body {
            background-color:#ffd800
        }

        .suc-label {
            color: #00ff90;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </head>

    <body>




        <form runat="server" class="form-horizontal gusta">
            <div class="form-group">
                <div class="col-sm-offset-50 col-sm-10">
                    <asp:Label ID="sucmessage" runat="server" Text="Successfully logged out.Thanks for visited us.We are looking forward to see you again.:)"></asp:Label>

                    <div>
                    </div>

                    <style>
                        .footer {
                            position: fixed;
                            left: 0;
                            bottom: 0;
                            width: 100%;
                            background-color: red;
                            color: white;
                            text-align: center;
                        }
                    </style>

                    <div class="footer">
                        <p>Copyright ©2019 All rights reserved | This site is made by BAŞAK FULYA KARADUMAN</p>
                    </div>


                    </div>
                    </div>
        </form>
    </body>
</html>
