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
    public partial class admindashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            display1();
            display2();
            display3();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }


        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminappointment.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("managestudents.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("managestaffs.aspx");
        }
        void display1()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from tbl_students", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label8.Text = ds.Tables[0].Rows.Count.ToString();

        }
        void display2()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from tbl_staffs", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label3.Text = ds.Tables[0].Rows.Count.ToString();

        }

        void display3()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from tbl_appointment", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label7.Text = ds.Tables[0].Rows.Count.ToString();
        }
    }
}