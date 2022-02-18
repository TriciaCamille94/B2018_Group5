<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="TCUAppointmentSystem.register" %>

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
         
                  
                   
          
              
  
                 
            
    
     <table align="center" style="margin:auto;border:5px solid white;" >
         <tr>
<td>
    <asp:Label ID="Label13" runat="server" Text="Student Id:"  ForeColor="White"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtId" runat="server"  ></asp:TextBox>

</tr>
<tr>
<td><asp:Label ID="Label2" runat="server" Text="FullName:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>

</tr>

<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Address:"  ForeColor="White"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtAdd" runat="server"  ></asp:TextBox>

</tr>
<tr>
<td>  <asp:Label ID="Label4" runat="server" Text="Gender:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" ForeColor="White" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
   
    </td>
</tr>
<tr>
<td>  <asp:Label ID="Label5" runat="server" Text="Phone Number:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtPhone" runat="server" ></asp:TextBox>
     </td>
</tr>
<tr>
<td>   <asp:Label ID="Label6" runat="server" Text="Email:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtEmail" runat="server"  TextMode="Email"></asp:TextBox>
</td>
</tr>
<tr>


    <td>  <asp:Label ID="Label7" runat="server" Text="Course:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server">
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
</td>
</tr>
<tr>
    <td>  <asp:Label ID="Label8" runat="server" Text="Year:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>1st Year</asp:ListItem>
        <asp:ListItem>2nd Year</asp:ListItem>
        <asp:ListItem>3rd Year</asp:ListItem>
        <asp:ListItem>4th Year</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>

    <td>  <asp:Label ID="Label9" runat="server" Text="Section:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtSection" runat="server"  ></asp:TextBox>
</td>
</tr>
<tr>

<td>  <asp:Label ID="Label10" runat="server" Text="Username:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtUser" runat="server" ></asp:TextBox>
</td>
</tr>
<tr>
<td>  <asp:Label ID="Label11" runat="server" Text="Password:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
    <td>  <asp:Label ID="Label12" runat="server" Text="UserType:"  ForeColor="White"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Staff</asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
    </asp:DropDownList>
    
</td>
    </tr>
        <tr>
<td align="right">
    <asp:Button ID="btn_reg" runat="server" Text="Register" OnClick="btn_reg_Click" />
</td>
</tr>

        <tr>

<td>
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Already have an Account? Login!</asp:LinkButton>
</td>
</tr>

    </table>

    </div>
      
    </form>
</body>
</html>
