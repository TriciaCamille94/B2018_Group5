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
    public partial class adminappointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                Registrar();
                OSAS();
                Clinic();
                Library();
            }
              
            
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

        void Registrar()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Registrar' AND status ='Approved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        void Library()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Library' AND status ='Approved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void Clinic()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Clinic' AND status ='Approved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        void OSAS()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='OSAS' AND status ='Approved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView4.DataSource = dt;
            GridView4.DataBind();
        }
    }
}