using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REMINDER_2
{
    public partial class Enablereminder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string selectSQL = "SELECT ReminderID,ReminderDate, ReminderTime FROM dbo.SetReminder";
            SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {
                ListItem newDate = new ListItem();
                newDate.Text = "<Select Date>";
                newDate.Value = "0";
                ReminderDate.Items.Add(newDate);

                ListItem newTime = new ListItem();
                newTime.Text = "<Select Time>";
                newTime.Value = "0";
                ReminderTime.Items.Add(newTime);

                con.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    newDate = new ListItem();
                    string sdate = reader["ReminderDate"].ToString();
                    newDate.Text = sdate.Substring(0, sdate.Length - 8);
                    newDate.Value = reader["ReminderID"].ToString();
                    ReminderDate.Items.Add(newDate);

                    newTime = new ListItem();
                    newTime.Text = reader["ReminderTime"].ToString();
                    newTime.Value = reader["ReminderID"].ToString();
                    ReminderTime.Items.Add(newTime);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                //TODO
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Frontpage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlCommand cmd = new SqlCommand("Update dbo.setreminder set Enable=@Enable" +
                " Where convert(char(10),ReminderDate,105)=@ReminderDate and ReminderTime=@ReminderTIme  ", con);

            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@Enable", "Y");
            cmd.Parameters.AddWithValue("@ReminderDate", ReminderDate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ReminderTIme", ReminderTime.SelectedItem.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("confirm.aspx");
        }
    }
}