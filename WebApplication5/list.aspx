<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="WebApplication5.list" %>

<%@ Register Src="~/UserControl/UserControlMenu.ascx" TagPrefix="uc1" TagName="UserControlMenu" %>
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
  
    <style>
       .zhat
       {
           color:#808080;
       }
       .goback{
          back;
       }
   </style>
    
</head>
<body>
       
    <form id="form1" runat="server">
       
        <div class="bootstrap-duallistbox-container row moveonselect">
            <div class="box1 col-md-4">
                <label for="bootstrap-duallistbox-nonselected-list_duallistbox_demo1[]" style="display: none;"></label>
                <span class="info-container"><span class="info">WILL DO LIST</span>
                    <button type="button" class="btn clear1 pull-right btn-default btn-xs btn-white btn-bold btn-info">show all</button>
                </span>
                <asp:TextBox CssClass="filter form-control" ID="txtwilldo" placeholder="Enter your WILL DO LIST" runat="server"></asp:TextBox>
                <div class="btn-group buttons">

                    <asp:Button OnClick="Add_OnClick" ID="btnAddWork" runat="server" Text="Add" CssClass=" btn-bold btn-info form-control " />
                    
                </div>
                <asp:ListBox AutoPostBack="false" ID="WilldoList" runat="server" multiple="multiple" class="form-control" name="duallistbox_demo1[]_helper1" style="height: 270px;"  >
                </asp:ListBox>
                <asp:Button ID="Button2" runat="server" Text="Go Right" CssClass="btn moveonselect btn-bold btn-info form-control " OnClick="PassDoingList"  />
                <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn moveonselect btn-bold btn-info form-control " OnClick="Delete_Willdo_List"  />
                

            </div>
            <div class="box2 col-md-4">
                <label for="bootstrap-duallistbox-selected-list_duallistbox_demo1[]" style="display: none;"></label>
                
                <span class="info-container"><span class="info">DOING LIST


                </span>

                    <button type="button" class="btn clear2 pull-right btn-default btn-xs btn-white btn-bold btn-info">show all</button>
                </span>
                <asp:TextBox CssClass="filter form-control" ID="txtdoing" runat="server" placeholder="Enter your doing mission"></asp:TextBox>
               <div class="btn-group buttons">

                    <asp:Button OnClick="AddDoing_OnClick" ID="Button5" runat="server" Text="Add" CssClass=" btn-bold btn-info form-control " />
                    
                </div>
                 <asp:ListBox ID="DoingList" runat="server" multiple="multiple" class="form-control" name="duallistbox_demo1[]_helper1" style="height: 270px;"  >
                </asp:ListBox>
                 <div class="btn-group buttons">
                     <asp:Button OnClick="PassDoneList" ID="Button3" runat="server" Text="Go Right" CssClass="btn moveonselect btn-bold btn-info form-control "  />
                     <asp:Button OnClick="PassWilldoList" ID="Button9" runat="server" Text="Go Left" CssClass="btn moveonselect btn-bold btn-info form-control "  />

                     <asp:Button OnClick="DeleteDoingList" ID="Button6" runat="server" Text="Delete" CssClass="btn moveonselect btn-bold btn-info form-control "  />
                     
                     
                </div>
                 <asp:Button OnClick="Go_Back_Click" CssClass="btn btn-bold btn-info form-control "  ID="GoBack" runat="server" Text="GO BACK " />
            </div>

            <div class="box2 col-md-4">
                <label for="bootstrap-duallistbox-selected-list_duallistbox_demo1[]" style="display: none;"></label>
                <span class="info-container"><span class="info">DONE LIST 

                </span>
                    <button type="button" class="btn clear2 pull-right btn-default btn-xs btn-white btn-bold btn-info">show all</button>
                </span>
                <asp:TextBox CssClass="filter form-control" ID="txtdone" runat="server" placeholder="Enter your done mission"></asp:TextBox>
               <div class="btn-group buttons">

                    <asp:Button OnClick=" AddDoneList" ID="Button7" runat="server" Text="Add" CssClass=" btn-bold btn-info form-control " />
                    
                </div>
                <asp:ListBox ID="DoneList" runat="server" multiple="multiple" class="form-control" name="duallistbox_demo1[]_helper1" style="height: 270px;"  >
                </asp:ListBox>
                 <div class="btn-group buttons">
                    <asp:Button OnClick="Delete_Work" ID="Button4" runat="server" Text="Delete" CssClass="btn moveonselect btn-bold btn-info form-control "  />
                      <asp:Button OnClick="PassDoingListBack" ID="Button8" runat="server" Text="Go Left" CssClass="btn moveonselect btn-bold btn-info form-control "  />
                </div>
            </div>

        </div>
         
        <br />
        <br />
       
        <br />
         
        </form>
        <uc1:UCScripts runat="server" id="UCScripts" />
</body>
    

</html>
