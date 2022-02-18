<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="TCUAppointmentSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TCU Appointment Scheduler System</title>

     <style>
        .full-page
{
    height: 100%;
	width: 100%;
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(trish.1.jpeg);
	background-position: center;
	background-size: cover;
	position: absolute;
}

        .form-box
{
    width:380px;
	height:480px;
	position:relative;
	margin:2% auto;
	background:rgba(0,0,0,0.3);
	padding:10px;
    overflow: hidden;
}
    </style>
</head>
<body style="background-image: url('trish.jpg')">
    <form id="form1" runat="server" >
      <div class="full-page"> 
          
                <h1>
                    <asp:Image ID="Image2" runat="server" Height="104px" ImageUrl="~/tcu (3).png" Width="138px"  ImageAlign="Middle" />
                   
                    <asp:Label ID="Label1" runat="server" Text="TCU Appointment Scheduler " Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                     
                    <asp:LinkButton ID="LinkButton1" runat="server" style="margin-left: 500px" ForeColor="White" Font-Size="Large" OnClick="LinkButton1_Click">HOME</asp:LinkButton>
                     <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" style="margin-left: 5px" ForeColor="White" Font-Size="Large">LOGIN</asp:LinkButton> 
                   
                   
            </h1>
               
 
    

          
       
    
         </div>
    </form>
</body>
</html>
