using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TCUAppointmentSystem
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          //  SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_users where username = '" + txtUser.Text + "' and password = '" + txtPass.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter("select username, password from tbl_users where username= '" + txtUser.Text + "' and password = '" + txtPass.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "'  union all select username, password from tbl_students where username= '" + txtUser.Text + "' and password = '" + txtPass.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "' union all select username, password from tbl_staffs where username= '" + txtUser.Text + "' and password = '" + txtPass.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script>alert('you are logined as " + dt.Rows[0][0] + "')</script>");
                if (DropDownList1.SelectedIndex == 0)

                {

                }
                else if (DropDownList1.SelectedIndex == 1)
                {
                    Response.Redirect("admindashboard.aspx");
                }

                else if (DropDownList1.SelectedIndex == 2)
                {
                    Response.Redirect("staffreg.aspx");
                }
                else if (DropDownList1.SelectedIndex == 3)
                {
                    Response.Redirect("stafflib.aspx");
                }
                else if (DropDownList1.SelectedIndex == 4)
                {
                    Response.Redirect("staffcli.aspx");
                }
                else if (DropDownList1.SelectedIndex == 5)
                {
                    Response.Redirect("staffosas.aspx");
                }

                else if (DropDownList1.SelectedIndex == 6)
                {
                    Response.Redirect("bookappoinment.aspx");
                }

            }
            else
            {
                Response.Write("error in your input");
            }

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }



        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookappooinment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}