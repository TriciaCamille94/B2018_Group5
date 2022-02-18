using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace TCUAppointmentSystem
{
    public partial class register : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[tbl_students]
([studentid]
,[name]
,[address]
,[gender]
,[phone]
,[email]
,[course]
,[year]
,[section]
,[username]
,[password]
,[usertype])
VALUES
('" + txtId.Text + "', '" + txtName.Text + "', '" + txtAdd.Text + "', '" + gender + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + DropDownList2.SelectedItem.ToString() + "', '" + DropDownList3.SelectedItem.ToString() + "','" + txtSection.Text + "','" + txtUser.Text + "', '" + txtPass.Text + "' ,'" + DropDownList1.SelectedItem.ToString() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}