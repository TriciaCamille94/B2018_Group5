<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managestudents.aspx.cs" Inherits="TCUAppointmentSystem.managestudents" %>

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
    width:100%;
	height:100%;
	position:relative;
	background:rgba(0,0,0,0.3);
    overflow: hidden;
}
  </style>
 <style type="text/css">
        
        .auto-style2 {
            margin-left: 293px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
         .auto-style7 {
         margin-left: 10px;
     }
     .auto-style8 {
         margin-left: 123px;
     }
     .auto-style9 {
         margin-left: 110px;
     }
     .auto-style10 {
         margin-left: 183px;
     }
     .auto-style12 {
         margin-left: 82px;
     }
     .auto-style14 {
         width: 100%;
         height: 100%;
         position: relative;
         overflow: hidden;
         left: 0px;
         top: 0px;
     }
    </style>
</head>
<body  class="full-page" style="left: 0px; top: 0px; height: 115%">
    <form id="form1" runat="server" class="form-box">
  <asp:Panel ID="Panel1" runat="server"  Height="115px">

                        <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="~/tcu (3).png" Width="138px"  ImageAlign="Middle" />
                        <asp:Label ID="Label9" runat="server" Text="TCU Appointment Scheduler " Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White"  OnClick="LinkButton1_Click" style="margin-left: 500px">HOME</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="White" OnClick="LinkButton3_Click" style="margin-left: 5px">LOG OUT</asp:LinkButton>

                       
        <br />
          <br />
        
                            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Height="411px" >
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="40px" style="margin-left:450px" ForeColor="White" Text="Manage Student"></asp:Label>
                                <br />
                                <br />
                                
                                <asp:Label ID="Label12" runat="server" Text="Student Id:"  style="margin-left:80px" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server" Width="328px" Font-Size="Large" style="margin-left:45px"></asp:TextBox>
                                <asp:Label ID="Label7" runat="server" style="margin-left:80px" Text="Email:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" Width="328px" Font-Size="Large" style="margin-left:85px" ></asp:TextBox>
                                 <br />
                                <asp:Label ID="Label3" runat="server"  style="margin-left:80px" Text="Name:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-left:80px" Width="328px" Font-Size="Large"></asp:TextBox>
                                 <asp:Label ID="Label8" runat="server"  style="margin-left:80px" Text="Course:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="328px" style="margin-left:80px"  Font-Size="Medium" >
                                     <asp:ListItem>BSCS</asp:ListItem>
        <asp:ListItem>BSIS</asp:ListItem>
        <asp:ListItem>BSPsy</asp:ListItem>
        <asp:ListItem>BSCrim</asp:ListItem>
        <asp:ListItem>BSTM</asp:ListItem>
        <asp:ListItem>BEED</asp:ListItem>
        <asp:ListItem>BSOA</asp:ListItem>
        <asp:ListItem>BSEM</asp:ListItem>
        <asp:ListItem>BSHRM</asp:ListItem>
        <asp:ListItem>BSBA-MM</asp:ListItem>
        <asp:ListItem>BSBA-HRDM</asp:ListItem>
        <asp:ListItem>BSE-Eng</asp:ListItem>
        <asp:ListItem>BSE-Sci</asp:ListItem>
        <asp:ListItem>BSE-Math</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                               
                                <asp:Label ID="Label4" runat="server" style="margin-left:80px" Text="Address:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" style="margin-left:65px" Width="328px" Font-Size="Large"></asp:TextBox>
                                 <asp:Label ID="Label1" runat="server" style="margin-left:80px" Text="Year:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left:95px" Height="25px" Width="328px" Font-Size="Medium">
                               <asp:ListItem>1st</asp:ListItem>
                               <asp:ListItem>2nd</asp:ListItem>
                               <asp:ListItem>3rd</asp:ListItem>
                               <asp:ListItem>4th</asp:ListItem>
                                 </asp:DropDownList>

                                <br />
                                
                                <asp:Label ID="Label5" runat="server" style="margin-left:80px" Text="Gender:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:RadioButton ID="RadioButton1" runat="server" style="margin-left:120px" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged1" Font-Size="Large" ForeColor="White"  />
                                <asp:RadioButton ID="RadioButton2" runat="server" style="margin-left:10px"  Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="Large" ForeColor="White" />
                                 <asp:Label ID="Label10" runat="server"   style="margin-left:210px" Text="Section:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox5" runat="server" Width="328px" Font-Size="Large" style="margin-left:80px" ></asp:TextBox>

                                 <br />

                               
                                 
                                <asp:Label ID="Label6" runat="server" style="margin-left:80px" Text="Phone Number:" Font-Size="Large" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" Width="328px" Font-Size="Large" CssClass="auto-style7"></asp:TextBox>
                               
                                  <br />
                                <br />

                               
                        <asp:Button ID="Button8" runat="server" Text="LOAD"  BackColor="Red"  style="margin-left:5px" Height="39px" Width="139px" ForeColor="White"  BorderColor="White" OnClick="Button8_Click" />
                        <asp:Button ID="Button9" runat="server" Text="SEARCH"  BackColor="Red"  style="margin-left:5px" Height="39px" Width="139px" ForeColor="White"  BorderColor="White" OnClick="Button9_Click" />                 

                               
                                <br />
                                
                               
                                <br />
                               
                           <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" style="margin-left:50px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="4%" Width="80%" Font-Size="Medium" >
                                    <Columns>
                                        <asp:BoundField HeaderText="Student ID" DataField="studentid" />
                                        <asp:BoundField HeaderText="Name" DataField="name" />
                                        <asp:BoundField HeaderText="Address" DataField="address" />
                                        <asp:BoundField HeaderText="Gender" DataField="gender" />
                                        <asp:BoundField HeaderText="Phone" DataField="phone" />
                                        <asp:BoundField HeaderText="Email" DataField="email" />
                                        <asp:BoundField HeaderText="Course" DataField="course" />
                                        <asp:BoundField HeaderText="Year" DataField="year" />
                                        <asp:BoundField HeaderText="Section" DataField="section" />
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
        
            <div>
                <asp:Panel ID="Panel2" runat="server" BorderWidth="2px" Height="794px">
                    <div>
                        <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" CssClass="auto-style3" ForeColor="White" Height="560px" Width="283px">
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
    </form>
</body>
</html>
