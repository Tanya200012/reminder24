using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REMINDER_2
{
    public partial class ModifyReminder : System.Web.UI.Page
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
                    string sdate= reader["ReminderDate"].ToString();
                    newDate.Text = sdate.Substring(0,sdate.Length-8);
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

        protected void Confirm_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Frontpage.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlCommand cmd = new SqlCommand("Select * from SetReminder where convert(char(10),ReminderDate,105)=@ReminderDate and ReminderTIme=@ReminderTIme ", con);
            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@ReminderDate", ReminderDate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ReminderTIme", ReminderTime.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "SetReminder");
            if (ds.Tables["SetReminder"].Rows.Count > 0)
            {
                TextBox8.Text = (string)ds.Tables["SetReminder"].Rows[0]["Description"];
                TextBox6.Text = (string)ds.Tables["SetReminder"].Rows[0]["EmailID"];
                DropDownList1.Text = (string)ds.Tables["SetReminder"].Rows[0]["ReminderSubject"];
                TextBox4.Text = (string)ds.Tables["SetReminder"].Rows[0]["ContactNumber"];
                TextBox7.Text = (string)ds.Tables["SetReminder"].Rows[0]["SMSNumber"];
                if ((string)ds.Tables["SetReminder"].Rows[0]["RecurDays"] == "7 Days")
                {
                    CheckBox2.Checked = true;
                }
                else if ((string)ds.Tables["SetReminder"].Rows[0]["RecurDays"] == "5 Days")
                {
                    CheckBox3.Checked = true;
                }

                else if ((string)ds.Tables["SetReminder"].Rows[0]["RecurDays"] == "3 Days")
                {
                    CheckBox4.Checked = true;
                }
                else if ((string)ds.Tables["SetReminder"].Rows[0]["RecurDays"] == "2 Days")
                {
                    CheckBox5.Checked = true;
                }

            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Rdays = System.String.Empty;

            if (CheckBox2.Checked)
            {
                Rdays = "7 Days";
            }
            else if (CheckBox3.Checked)
            {
                Rdays = "5 Days";
            }
            else if (CheckBox4.Checked)
            {
                Rdays = "3 Days";
            }
            else if (CheckBox5.Checked)
            {
                Rdays = "2 Days";
            }

            SqlConnection con = new SqlConnection("server=TANYAPC\\SQLEXPRESS01;Database=project; Trusted_connection=true ");
            SqlCommand cmd = new SqlCommand("Update dbo.setreminder set Description=@Description, EmailID=@EmailID," +
                "ReminderSubject = @ReminderSubject, ContactNumber=@ContactNumber, SMSNumber=@SMSNumber, " +
                "RecurDays=@RecurDays Where convert(char(10),ReminderDate,105)=@ReminderDate and ReminderTIme=@ReminderTIme  ", con);

            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@Description", TextBox8.Text);
            cmd.Parameters.AddWithValue("@EmailID", TextBox6.Text);
            cmd.Parameters.AddWithValue("@ReminderSubject", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@ContactNumber", TextBox4.Text);
            cmd.Parameters.AddWithValue("@SMSNumber", TextBox7.Text);
            cmd.Parameters.AddWithValue("@RecurDays", Rdays);
            cmd.Parameters.AddWithValue("@ReminderDate", ReminderDate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ReminderTIme", ReminderTime.SelectedItem.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("confirm.aspx");
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
