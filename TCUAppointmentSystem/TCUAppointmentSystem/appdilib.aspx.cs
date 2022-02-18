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
    public partial class appdilib : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadRecord();
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
            Response.Redirect("appdilib.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("stafflib.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("UPDATE tbl_appointment set name ='" + TextBox1.Text + "',  email = '" + TextBox2.Text + "', phone = '" + TextBox3.Text + "',dept =  '" + TextBox4.Text + "',reason =  '" + TextBox5.Text + "',date =  '" + TextBox6.Text + "',time =  '" + TextBox7.Text + "',  status= '" + DropDownList1.SelectedItem.ToString() + "' where studentid = '" + int.Parse(TextBox8.Text) + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from tbl_appointment where aid = '" + int.Parse(TextBox9.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox8.Text = r.GetValue(1).ToString();
                TextBox1.Text = r.GetValue(2).ToString();
                TextBox2.Text = r.GetValue(3).ToString();
                TextBox3.Text = r.GetValue(4).ToString();
                TextBox4.Text = r.GetValue(5).ToString();
                TextBox5.Text = r.GetValue(6).ToString();
                TextBox6.Text = r.GetValue(7).ToString();
                TextBox7.Text = r.GetValue(8).ToString();
                DropDownList1.SelectedValue = r.GetValue(9).ToString();


            }
        }
        void LoadRecord()
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from tbl_appointment where dept='Library'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}