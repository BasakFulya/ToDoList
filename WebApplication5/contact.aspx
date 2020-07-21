<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication5.contact" %>

<%@ Register Src="~/UserControl/UserControlMenu.ascx" TagPrefix="uc1" TagName="UserControlMenu" %>



<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>

   
    <style> 
        .jumbotron {
            background: url(img.html/cosmic.jpg);
            background-size: 100% 100%;
            padding: 200px 150px;

        }

        body{
            background-color:#635959;
        }

        .gusta {
            background: url(img.html/bea.jpg);
            background-size: 100% 100%;
            padding: 112px 175px
        }


        .email {
            width: 400px;
        }

        .message {
            height: 200px;
            width: 400px;
        }


        .btn-default {
            height: 55px;
            width: 113px;
        }

        .suc-label {
            color: #0f06ea
        }
    </style>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body >
    <uc1:UserControlMenu runat="server" ID="UserControlMenu" />

    <form runat="server" class="form-horizontal gusta">

 
    
        
        <div class="form-group">
            <label class="control-label" for="email">&nbsp;Email:</label>
            <br />
            <div class="email ">
                <asp:TextBox required="required" type="email" class="form-control email" id="email" placeholder="Enter email" runat="server"></asp:TextBox>
            </div>
        </div>
           <div class="form-group">
            <label class="control-label"">&nbsp;Message:</label>
             <br /> 
            <div >
                <asp:TextBox required="required" type="text" Cssclass="form-control message" TextMode="MultiLine" Rows="7"  placeholder="Enter message....." ID="message" runat="server"></asp:TextBox>
            </div>
               
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button class="btn btn-default" ID="Button1" runat="server" Text="Send" OnClick="Button1_Click"/>
                <asp:Button class="btn btn-default" ID="Button2" runat="server" Text="Cancel "  OnClick="Button2_Click"  />
                <div>
                   
                    <asp:Label ID="sucmessage" runat="server" Text="Successfully sent :)"></asp:Label>

              


                </div>
            </div>
        </div>


    </form>
</body>
</html>
