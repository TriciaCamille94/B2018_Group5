<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookappoinment.aspx.cs" Inherits="TCUAppointmentSystem.bookappoinment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> TCU Appoinment Scheduler System</title>
     <style type="text/css">
        
        .auto-style2 {
            margin-left: 100px;
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
                <asp:Panel ID="Panel1" runat="server"  Height="115px">

                        <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="~/tcu (3).png" Width="138px"  ImageAlign="Middle" />
                        <asp:Label ID="Label9" runat="server" Text="TCU Appointment Scheduler " Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White"  OnClick="LinkButton1_Click" style="margin-left: 500px">HOME</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="White" OnClick="LinkButton3_Click" style="margin-left: 5px">LOG OUT</asp:LinkButton>

                       
        <br />
          <br />
        
                            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Height="733px" >
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" style="margin-left:500px" ForeColor="White" Text="Book Appointment"></asp:Label>
                                <br />
                                <br />
                             <div class="auto-style6" style="margin-left:200px">
                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" style="margin-left:80px " Text="Name" Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-left:65px" Width="238px"></asp:TextBox>
                                 <asp:Label runat="server" Font-Size="Medium" style="margin-left:80px " Text="Email" Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" style="margin-left:40px" Width="238px"></asp:TextBox>

                                <br />
                              
                                <asp:Label ID="Label4" runat="server" Font-Size="Medium" style="margin-left:80px " Text="Phone Number" Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" Width="238px"></asp:TextBox>
                                   <asp:Label ID="Label5" runat="server" Font-Size="Medium" style="margin-left:80px " Text="Department" Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" Height="25px" Width="238px" AutoPostBack="True" >
                                   <asp:ListItem>BSCS</asp:ListItem>
        <asp:ListItem>Registrar</asp:ListItem>
        <asp:ListItem>Library</asp:ListItem>
        <asp:ListItem>Clinic</asp:ListItem>
        <asp:ListItem>OSAS</asp:ListItem>
        
                                </asp:DropDownList>
                                <br />
                            
                        
                        
                                <asp:Label ID="Label6" runat="server" Font-Size="Medium" style="margin-left:80px " Text="Reason " Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left:55px" Height="25px" Width="238px">
                                    <asp:ListItem>----REGISTRAR------</asp:ListItem>
                                    <asp:ListItem>COG</asp:ListItem>
                                    <asp:ListItem>TOR</asp:ListItem>
                                    <asp:ListItem>G.W.A</asp:ListItem>
                                    <asp:ListItem>Honorable Dismissal</asp:ListItem>
                                    <asp:ListItem>Profilling</asp:ListItem>
                                    <asp:ListItem>Enrollment</asp:ListItem>
                                    <asp:ListItem>----LIBRARY----</asp:ListItem>
                                    <asp:ListItem>Borrowing Books</asp:ListItem>
                                    <asp:ListItem>Returning Books</asp:ListItem>
                                    <asp:ListItem>-----CLINIC------</asp:ListItem>
                                    <asp:ListItem>Dental</asp:ListItem>
                                    <asp:ListItem>-----OSAS-------</asp:ListItem>
                                    <asp:ListItem>Counseling</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="Label7" runat="server" Font-Size="Medium" style="margin-left:90px" Text="Date" Font-Bold="True" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" style="margin-left:50px" Width="238px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageAlign="AbsBottom" ImageUrl="~/calendar.png" Width="28px" OnClick="ImageButton1_Click" />

                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Time"  style="margin-left:80px "  Font-Bold="True" ForeColor="White" Font-Size="Medium" > 
                                                                    <asp:RadioButton ID="RadioButton1" runat="server" style="margin-left:120px" Text="am" OnCheckedChanged="RadioButton1_CheckedChanged1" Font-Size="Large" ForeColor="White"  />
                                <asp:RadioButton ID="RadioButton2" runat="server" style="margin-left:10px"  Text="pm" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="Large" ForeColor="White" />

                               <asp:Calendar ID="Calendar1" runat="server" Height="263px" style="margin-left:550px" Width="238px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#999999" ForeColor="White"></asp:Calendar>

                                     

                                    </asp:Label>   
                                <br />
                               
                                <br />
                                 <asp:Button ID="Button4" runat="server" Height="39px"   Width="139px" BackColor="Red" ForeColor="White"  BorderColor="White" style="margin-left:350px" Text="Submit" OnClick="Button4_Click" />
                                <asp:Button ID="Button1" runat="server" Height="39px"   Width="139px" BackColor="Red" ForeColor="White"  BorderColor="White" style="margin-left:5px" Text="Cancel" />
                            </div>
                                
                                
                              
                                
                             

                                   </asp:Panel>
                                        
                                 

                </asp:Panel>
            </div>
            <div>
                <asp:Panel ID="Panel2" runat="server" BorderWidth="2px" Height="794px" Font-Bold="True" ForeColor="White">
                    <div>
                        <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" CssClass="auto-style3" ForeColor="White" Height="789px" Width="283px">
                            <div>
                                <asp:Button ID="Button2" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="280px" Text="Book Appointment" Width="284px" OnClick="Button2_Click" />
                                <asp:Button ID="Button3" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="280px" Text="List of Appointment" Width="284px" OnClick="Button3_Click" />
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
