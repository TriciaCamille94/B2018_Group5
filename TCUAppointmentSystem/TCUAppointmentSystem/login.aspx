<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TCUAppointmentSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment Scheduler System</title>
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
    width:100%;
	height:100%;
	position:relative;
	background:rgba(0,0,0,0.3);
    overflow: hidden;
}
  </style>
</head>
<body class="full-page">
    <form id="form1" runat="server" class="form-box">
      <div>
        <asp:Panel ID="Panel1" runat="server">
              <asp:Image ID="Image2" runat="server" Height="104px" ImageUrl="~/tcu (3).png" Width="138px"  ImageAlign="Middle" />
                   
                    <asp:Label ID="Label1" runat="server" Text="TCU Appointment Scheduler " Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                     
                    <asp:LinkButton ID="LinkButton1" runat="server" style="margin-left: 500px" ForeColor="White" Font-Size="Large" OnClick="LinkButton1_Click">HOME</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" runat="server" style="margin-left: 5px" ForeColor="White" Font-Size="Large" OnClick="LinkButton5_Click">LOGIN</asp:LinkButton>
                   
        </asp:Panel>
         
                  
                   
          
              
                 
            
     <table align="center" style="margin-top: 100px; border:5px solid white;">

            <tr >
                <td >
                    <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtUser" runat="server" style="margin-top: 10px;" Font-Size="Large" ForeColor="Black"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" style="margin-top: 10px;" Font-Size="Large" ForeColor="Black"></asp:TextBox></td>
            </tr>
            <tr >
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User type:" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" style="margin-top: 10px;" ForeColor="Black">
                         <asp:ListItem>---- Select User Type ----</asp:ListItem>
                        <asp:ListItem>ADMIN</asp:ListItem>
                        <asp:ListItem>STAFFREG</asp:ListItem>
                        <asp:ListItem>STAFFLIB</asp:ListItem>
                        <asp:ListItem>STAFFCLI</asp:ListItem>
                        <asp:ListItem>STAFFOSAS</asp:ListItem>
                        <asp:ListItem>STUDENT</asp:ListItem>

                    </asp:DropDownList></td>
            </tr>

            <tr align="left">
                <td class="auto-style1">
                       
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Login"  Font-Size="Small" Height="37px" Width="65px" OnClick="Button2_Click"/>
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" align="left" OnClick="LinkButton2_Click" ForeColor="White">Doesn&#39;t have an Account? Register!</asp:LinkButton>
                    </td>
            </tr>
        </table>


    </div>
      
    </form>
</body>
</html>
