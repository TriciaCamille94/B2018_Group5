﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCUAppointmentSystem
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }


        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookappoinment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}