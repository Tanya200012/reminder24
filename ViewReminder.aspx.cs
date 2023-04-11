using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REMINDER_2
{
    public partial class ViewReminder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("Select ReminderSubject, Description, EmailID, ContactNumber, " +
                "SMSNumber,RecurDays as RecurrenceFrequency from dbo.setreminder", Con);
            DataTable DT = new DataTable();

            SQLAdapter.Fill(DT);

            grdViewReminder.DataSource = DT;
            grdViewReminder.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModifyReminder.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Frontpage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisableReminder.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deletereminder.aspx");
        }
    }
}