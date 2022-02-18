<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="TCUAppointmentSystem.admindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title> TCU Appoinment Scheduler System</title>
     <style type="text/css">
        
        .auto-style2 {
            margin-left: 294px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            margin-left: 107px;
        }
    </style>
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
    <div class="auto-style1">
            <div>
                <asp:Panel ID="Panel1" runat="server"  Height="108px">

                        <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="~/tcu (3).png" Width="138px"  ImageAlign="Middle" />
                        <asp:Label ID="Label9" runat="server" Text="TCU Appointment Scheduler " Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White"  OnClick="LinkButton1_Click" style="margin-left: 500px">HOME</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="White" OnClick="LinkButton3_Click" style="margin-left: 5px">LOG OUT</asp:LinkButton>

                       
        <br />
          <br />
        
                            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Height="733px" >
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" style="margin-left:450px" ForeColor="White" Text="Dashboard"></asp:Label>
                                <br />
                                <br />
                                
                                
                                
                              
                                
                                <asp:Label ID="Label4" runat="server" style="margin-left:110px"  Text="Appointment" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                                     <asp:Label ID="Label5" runat="server" style="margin-left:200px" Font-Size="XX-Large" Text="Student" ForeColor="White"></asp:Label>
                                   <asp:Label ID="Label6" runat="server" style="margin-left:200px" Font-Size="XX-Large" Text="Staff" ForeColor="White"></asp:Label>
                                <br />
                                <br />

                                     <asp:Label ID="Label7" runat="server" style="margin-left:190px" Text="5" Font-Size="40px" ForeColor="White"></asp:Label>
                                     <asp:Label ID="Label8" runat="server" style="margin-left:320px" Text="2" Font-Size="40px" ForeColor="White"></asp:Label>
                                     <asp:Label ID="Label3" runat="server" style="margin-left:275px" Text="6" Font-Size="40px" ForeColor="White"></asp:Label>

                                   </asp:Panel>
                                        
                                 

                </asp:Panel>
            </div>
            <div>
                <asp:Panel ID="Panel2" runat="server" BorderWidth="2px" Height="794px">
                    <div>
                        <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" CssClass="auto-style3" ForeColor="White" Height="789px" Width="283px">
                            <div>
                                <asp:Button ID="Button2" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="140px" Text="Dasboard" Width="284px" OnClick="Button2_Click" />
                                <asp:Button ID="Button3" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="140px" Text="Appointment" Width="284px" OnClick="Button3_Click" />
                                <asp:Button ID="Button4" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="140px" Text="Student" Width="284px" OnClick="Button4_Click" />
                                <asp:Button ID="Button5" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="140px" Text="Satff" Width="284px" OnClick="Button5_Click" />
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
