<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffreg.aspx.cs" Inherits="TCUAppointmentSystem.staffreg" %>

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
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="50px" style="margin-left:150px" ForeColor="White" Text="List of Appointment in Registrar"></asp:Label>
                                <br />
                                <br />
                                
                                
                                 <asp:Label ID="Label1" runat="server" style="margin-left:10px" Text="Approve" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="Medium" Height="14%" style="margin-left:10px" Width="894px">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                        <asp:BoundField DataField="email" HeaderText="Email" />
                                        <asp:BoundField DataField="phone" HeaderText="Phone Number" />
                                        <asp:BoundField DataField="dept" HeaderText="Department" />
                                        <asp:BoundField DataField="reason" HeaderText="Reason" />
                                        <asp:BoundField DataField="date" HeaderText="Date" />
                                        <asp:BoundField DataField="time" HeaderText="Time" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                                <br />
                                <br />


                                   <asp:Label ID="Label3" runat="server" style="margin-left:10px" Text="Disapproved" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="Medium" Height="14%" style="margin-left:10px" Width="894px">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                        <asp:BoundField DataField="email" HeaderText="Email" />
                                        <asp:BoundField DataField="phone" HeaderText="Phone Number" />
                                        <asp:BoundField DataField="dept" HeaderText="Department" />
                                        <asp:BoundField DataField="reason" HeaderText="Reason" />
                                        <asp:BoundField DataField="date" HeaderText="Date" />
                                        <asp:BoundField DataField="time" HeaderText="Time" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>



                              
                                
                              
                                   </asp:Panel>
                                        
                                 

                </asp:Panel>
            </div>
            <div>
                <asp:Panel ID="Panel2" runat="server" BorderWidth="2px" Height="794px">
                    <div>
                        <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" CssClass="auto-style3" ForeColor="White" Height="789px" Width="283px">
                            <div>
                                <asp:Button ID="Button2" runat="server" BackColor="#666666" Font-Size="Medium" ForeColor="White" Height="280px" Text="Approval of Appointment" Width="284px" OnClick="Button2_Click" />
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
