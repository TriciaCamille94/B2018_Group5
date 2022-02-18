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
    public partial class managestudents : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        void LoadRecord()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_students", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");

        }


        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from tbl_students where studentid = '" + int.Parse(TextBox7.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {

                TextBox1.Text = r.GetValue(2).ToString();
                TextBox2.Text = r.GetValue(3).ToString();
                gender = r.GetValue(4).ToString();
                TextBox3.Text = r.GetValue(5).ToString();
                TextBox4.Text = r.GetValue(6).ToString();
                DropDownList2.SelectedValue = r.GetValue(7).ToString();
                DropDownList1.SelectedValue = r.GetValue(8).ToString();
                TextBox5.Text = r.GetValue(9).ToString();

            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            SqlCommand comm = new SqlCommand("select * from tbl_students where studentid ='" + int.Parse(TextBox7.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}