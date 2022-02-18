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
    public partial class bookappoinment : System.Web.UI.Page
    {
        string time;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;


            }
        }
        protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
        {
            time = "AM";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            time = "PM";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }

        }
        protected void cascadingdropdown()
        {
            SqlConnection sqlconn = new SqlConnection("Data Source = MRS - OH; Initial Catalog = appsystem; Integrated Security = True");
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand("SELECT * [dbo].[tbl_appointment]", sqlconn);
            sqlcomm.CommandType = CommandType.Text;
            DropDownList1.DataSource = sqlcomm.ExecuteReader();
            DropDownList1.DataTextField = "dept";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select Department--", "0"));
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Black;
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
            Response.Redirect("bookappoinment.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("studapp.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=MRS-OH;Initial Catalog=appsystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[tbl_appointment]
([name]
,[email]
,[phone]
,[dept]
,[reason]
,[date]
,[time]
)
VALUES
('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "', '" + DropDownList1.SelectedItem.ToString() + "',  '" + DropDownList2.SelectedItem.ToString() + "', '" + TextBox4.Text + "','" + time + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);


        }
    }
}