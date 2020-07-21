<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication5.login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style>
        .gusta {
            background: url(img.html/bea.jpg);
            background-size: 100% 100%;
            padding: 160px 220px
        }

        #pwd {
            width: 157px;
        }

        #email {
            width: 159px;
        }

        #surname {
            width: 159px;
        }

        #name {
            width: 159px;
        }

        .btn-default {
            height: 55px;
            width: 113px;
        }

        .form-middle {
            margin-left: 340px;
        }
    </style>

    <script> 
    function myFunction() {
  var x = document.getElementById("pwd");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
        }
        </script>
</head>
<body class="gusta">
    <form runat="server" class="form-horizontal">
        <div class="form-middle">
            <div class="margin-left">

                <button onclick="location.href='help.aspx' " type="button" class="btn btn-default">BACK TO HOME</button>
                <br />
                <br />
            </div>



            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Name:</label>
                <div class="col-sm-10">

                    <asp:TextBox required="required" type="text" class="form-control" ID="name" placeholder="Enter your name" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="surname">Surname:</label>
                <div class="col-sm-10">

                    <asp:TextBox required="required" type="text" class="form-control" ID="surname" placeholder="Enter your surname" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-10">

                    <asp:TextBox required="required" type="email" class="form-control" ID="email" placeholder="Enter email" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-10">
                    <asp:TextBox required="required" placeholder="Enter Password" ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
                  
<!-- An element to toggle between password visibility -->
                    <input  type="checkbox" onclick="myFunction()">Show Password
                </div>
            </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" />Remember me</label>
                </div>

                <br />
                <br />
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="login_button" CssClass="btn-default" runat="server" Text="Enter" OnClick="login_button_Click" />



                        <asp:Button CssClass="btn-default" ID="Button1" runat="server" Text="Cancel" OnClientClick="this.form.reset();return false;" />
                        <div>
                            <asp:Label ID="Label1" runat="server" Text="You enter wrong password or email"></asp:Label>

                            <br />

                        </div>

                    </div>
                    <div class="col-sm-offset-1 col-sm-8">
                        <asp:Label ID="forgot" BackColor="#3366ff" runat="server" Text="Did you forgot your password ? Then send an email to us :)"></asp:Label>

                        <button type="button" class="btn btn-danger">RESET MY PASSWORD </button>
                    </div>
                </div>
        </div>

    </form>
</body>
</html>
