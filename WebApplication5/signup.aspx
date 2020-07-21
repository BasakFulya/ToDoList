<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication5.signup" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .gusta {
            background: url(img.html/bea.jpg);
            background-size: 100% 100%;
            padding: 148px 220px
        }

        #pwd {
            width: 161px;
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
    </style>
</head>
<body class="gusta">
    <form runat="server" class="form-horizontal">
        <div class="margin-left">


            <button onclick="location.href='help.aspx' " type="button" class="btn btn-default">BACK TO HOME</button>
            

            <a type="button" href="/UserControl/WebForm1.aspx" class="btn btn-info" style="color: #11569E">

               
                  <button type="button" class="btn btn-default btn-sm">
                    <span class="glyphicon glyphicon-log-out"></span>Log out
                    </div>
               </button>
            
        </a>

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
                <asp:Label ID="emailerror" Class="control-label col-sm-2 error-label" runat="server" Text="Email is already used !"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">

                <asp:TextBox required="required" type="password" class="form-control" ID="pwd" placeholder="Enter password" runat="server" Width="159px"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="vpwd">Verify Password:</label>
            <div class="col-sm-10">
                <asp:TextBox required="required" CssClass="form-control" ID="confirmpwd" runat="server" placeholder="Repeat your password....." Width="159px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="passworderror" Class="control-label col-sm-2 error-label" runat="server" Text="Passwords are not same!"></asp:Label>
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Remember me</label>

                </div>
            </div>

        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">

                <asp:Button CssClass="btn-default" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />


                &nbsp;


                
                <asp:Button OnClientClick="this.form.reset();return false;" CssClass="btn-default" ID="Button2" runat="server" Text="Cancel" />



            </div>
        </div>

    </form>


</body>
</html>
