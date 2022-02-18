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
    public partial class staffreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Approved();
                Disapproved();
            }
        }
        void Approved()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appscheduler;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Registrar' AND status='Approved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        void Disapproved()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appscheduler;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Registrar' AND status='Disapproved'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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
            Response.Redirect("appdireg.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("staffreg.aspx");
        }
    }
}