using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace REMINDER_2
{
    public partial class signup_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.login(Username,email,password) values(@username, @email, @password) ", con);
            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@username", TextBox5.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }
}