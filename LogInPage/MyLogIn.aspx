<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyLogIn.aspx.cs" Inherits="LogInPage.MyLogIn" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
     <!--Bootstrap css links--->
  <link href="Content/bootstrap.css" rel="stylesheet" />
  <link href="Content/stylesheet.css" rel="stylesheet" />
     <!--Bootstrap css links end --->
  <title>Registration Page</title>
</head>
<body>  
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
                <div class="col-*-*  col-centered">
                    <p class="h2" id="header">Member Registration</p>
                </div>
           </div>
        </div>
        
    <!--- Form Area Begins here--->
      <!------->
      <div class="container" id="formarea">
        <div class="row">
  		    <div class="col-md-4 col-md-offset-4">
 
			    <form runat="server" id="registrationPage">
			      <div class="form-group">
                      <label for="LabelFirstName">First Name</label>			        
                      <asp:TextBox ID="TextBoxFirstName" runat="server" class="form-control" placeholder="Enter your first name"></asp:TextBox>			        
			           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="First name is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
			      <div class="form-group">
                      <label for="LabelLastName">Last Name</label>			        
                      <asp:TextBox ID="TextBoxLastName" runat="server" class="form-control" placeholder="Enter your last name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Last name is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
			      </div>
                  <div class="form-group">
                      <label for="LabelAddress">Street Address</label>			        
                      <asp:TextBox ID="TextBoxStAddress" runat="server" class="form-control" placeholder="Enter your street address"></asp:TextBox>	
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxStAddress" ErrorMessage="Street address is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
			      </div>
                  <div class="form-group">
                      <label for="LabelCity">City</label>			        
                      <asp:TextBox ID="TextBoxCity" runat="server" class="form-control" placeholder="Enter your city"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="City name is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
			        <label for="ListProvince">Province</label>
                      <asp:DropDownList ID="DropDownListProvince" runat="server" class="form-control">
                             <asp:ListItem>Select a province</asp:ListItem>
                            <asp:ListItem>AB</asp:ListItem>
                            <asp:ListItem>BC</asp:ListItem>
                            <asp:ListItem>MB</asp:ListItem>
                            <asp:ListItem>NB</asp:ListItem>
                            <asp:ListItem>NL</asp:ListItem>
                            <asp:ListItem>NT</asp:ListItem>
                            <asp:ListItem>NS</asp:ListItem>
                            <asp:ListItem>NU</asp:ListItem>
                            <asp:ListItem>ON</asp:ListItem>
                            <asp:ListItem>PE</asp:ListItem>
                            <asp:ListItem>QC</asp:ListItem>
                            <asp:ListItem>SK</asp:ListItem>
                            <asp:ListItem>YT</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListProvince" ErrorMessage="Please select a province" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
                      <label for="LabelPostalCode">Postal Code</label>			        
                      <asp:TextBox ID="TextBoxPostalCode" runat="server" class="form-control" placeholder="Enter your postal code"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPostalCode" ErrorMessage="Postal code is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPostalCode" ErrorMessage="Postcal code not in proper format" ForeColor="#FF9966" ValidationExpression="[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]" Display="Dynamic"></asp:RegularExpressionValidator>
                  </div>
                  <div class="form-group">
                      <label for="LabelAge">Age</label>			        
                      <asp:TextBox ID="TextBoxAge" runat="server" class="form-control" placeholder="Enter your age"></asp:TextBox>	
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="Age is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" ControlToValidate="TextBoxAge" MinimumValue="18" MaximumValue="120" ErrorMessage="Age must be 18 - 120" ForeColor="#FF9966" Display="Dynamic"></asp:RangeValidator>
                  </div>
                  <div class="form-group">
                      <label for="LabelPostalCode">Password</label>			        
                      <asp:TextBox ID="TextBoxPwd" runat="server" class="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>	
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPwd" ErrorMessage="Password is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
			      </div>
                  <div class="form-group">
                      <label for="LabelAge">Confirm Password</label>			        
                      <asp:TextBox ID="TextBoxCPwd" runat="server" class="form-control" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxCPwd" ErrorMessage="Re-enter password" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match" ForeColor="#FF9966" ControlToCompare="TextBoxPwd" ControlToValidate="TextBoxCPwd" Display="Dynamic"></asp:CompareValidator>
                  </div>
                  <div class="form-group">
                      <label for="LabelPostalCode">Email</label>			        
                      <asp:TextBox ID="TextBoxEmail" runat="server" class="form-control" placeholder="Enter your email"></asp:TextBox>	
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="#FF9966" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter valid email." ForeColor="#FF9966" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
			      </div>
                  <div class="form-group">
                      <label for="LabelAltEmail">Alternate Email</label>			        
                      <asp:TextBox ID="TextBoxAltEmail" runat="server" class="form-control" placeholder="Confirm your alternate email"></asp:TextBox>
                 </div>
                  <div class="form-group" id="phnumdiv">
                      <label for="LabelPhoneNum">Phone Number</label>			        
                      <asp:TextBox ID="TextBoxPhoneNum" runat="server" class="form-control" placeholder="Enter your phone number"></asp:TextBox>			        
			      </div>
                  <div class="form-group" id="addmemberpaddingbottom">
                      <label for="LabelPhoneNum" id="addmembertext">Enter Another Member</label>			        
                      <asp:CheckBox ID="CheckBoxAddMember" runat="server" Checked="False" />
                      
                      
			      </div>                    
		          <div class="row row-centered">
                   <asp:Button class="btn btn-primary btn-lg" type="submit" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
                   <input class="btn btn-primary btn-lg" id="Reset1" type="reset" value="Reset" style="margin-left: 40px" onclick="Button2_Click"/>
                      <!--<asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="Reset" type="reset" style="margin-left: 40px" OnClick="Button2_Click"/> -->
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
			  </form>
	  	    </div>
	      </div>
	     </div>
    
    <!-----Form Area Ends here--->

    <!---Footer starts here---->	
    <div class="container" id="footerstyle">
        <nav class="navbar navbar-light bg-light">
           <a class="navbar-brand" href="#">   
                <p id="copyright">&copy; 2017 Narayan Inc.</p>
            </a>                
         </nav>
     </div>
    <!---Footer ends here---->	
    <!--Bootstrap js links--->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/bootwrap-freecode.js"></script>
    <!--Bootstrap js links end--->
</body>
</html>
