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
    public partial class set_reminder_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
    SqlCommand cmd = new SqlCommand("INSERT INTO dbo.SetReminder (ReminderDate,ReminderTIme,Description,EmailID,ReminderSubject, ContactNumber, SMSNumber, RecurDays) VALUES (@ReminderDate, @ReminderTIme, @Description, @EmailID, @ReminderSubject, @ContactNumber, @SMSNumber,@RecurDays )", con);
            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@reminderdate", TextBox1.Text);
            cmd.Parameters.AddWithValue("@remindertime", TextBox2.Text);
            cmd.Parameters.AddWithValue("@description", TextBox3.Text);
            cmd.Parameters.AddWithValue("@emailid", TextBox4.Text);
            cmd.Parameters.AddWithValue("@remindersubject", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@contactnumber", TextBox5.Text);
            cmd.Parameters.AddWithValue("@smsnumber",TextBox6.Text );
            cmd.Parameters.AddWithValue("@recurdays", CheckBoxList1.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            
            

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Frontpage.aspx");
        }
    }
}