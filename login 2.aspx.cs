using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace REMINDER_2
{
    public partial class login_2 : System.Web.UI.Page
    {
        private object txtusername;
        private object Txtpassword;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("Frontpage.aspx");
            

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup 2.aspx");
        }
    }
}