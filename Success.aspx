<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="LogInPage.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
     <!--Bootstrap css links--->
  <link href="Content/bootstrap.css" rel="stylesheet" />
  <link href="Content/stylesheet.css" rel="stylesheet" />
     <!--Bootstrap css links end --->
  <title>Registration</title>
</head>
<body>
    <div id="container">
    <!---Navbar is here---->
    <div class="container" id="navstyle">
        <nav class="navbar navbar-light bg-light">
           <a class="navbar-brand" href="#">
                <img src="Content/images/booklogo.png" width="60" height="60" style="padding-bottom:15px" alt="logo"/>
            </a>                
         </nav>
     </div>
    <!---Navbar ends here---->
        <div class="container">
           <div class=" row row-centered">
                <div class="col-*-*  col-centered" style="height:420px">
                    <p><asp:Label ID="Label1" runat="server" class="h3" Text=""></asp:Label></p>
                    <p><asp:Label ID="Label2" runat="server" class="h4" Text=""></asp:Label></p>
                    <p><asp:Label ID="Label3" runat="server" class="h4" Text=""></asp:Label></p>
                    
                    
                   <!--- <p class="h3" id="header">Congratulations<span id="userName"></span></p>
                    <p >Your regisgtration is successful</p>
                    <p >The information you provided has been saved</p> ---->
                </div>
           </div>
        </div>
        
    <!--- Form Area Begins here--->
     
    <!-----Form Area Ends here--->

    <!---Footer is here---->	
    
     <footer class="footer fixed-bottom container" id="footerstyle">
        <p id="copyright">&copy; 2017 Narayan Inc.</p>
    </footer>
    <!---Footer ends here---->	
    <!--Bootstrap js links--->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/bootwrap-freecode.js"></script>
    <!--Bootstrap js links end--->
    </div>

</body>
</html>
