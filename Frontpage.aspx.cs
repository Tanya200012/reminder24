using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REMINDER_2
{
    public partial class front_page_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetReminder.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisableReminder.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModifyReminder.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteReminder.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enablereminder.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewReminder.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("login 2.aspx");
        }
    }
}