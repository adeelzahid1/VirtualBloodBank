using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace Virtual_Blood_Bank
{
    public partial class Forgetpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ResetPassbtn_Click(object sender, EventArgs e)
        {
            String password, user;
            //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=RegisteredUser; Integrated Security=True";
            string mycon = "Data Source=ADEELZAHID\\SQLEXPRESS;Initial Catalog=VirtualBloodBank;Integrated Security=True";
            String myquery = "Select * from donor_user where d_email='" + ResetEmail.Text + "' and d_mobile='" + ResetContact.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["d_password"].ToString();
                user = ds.Tables[0].Rows[0]["d_firstName"].ToString() + " "+ ds.Tables[0].Rows[0]["d_lastName"].ToString();
                sendpassword(password, ResetContact.Text, user);
                Label1.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

            }
            else
            {
                Label1.Text = "Your Username is Not Valid or Email Not Registered";

            }
            con.Close();
        }


        private void sendpassword(String password, String email, string user)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("virtualblood504@gmail.com", "Mian3322433");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( Virtual Blood Services )";
            msg.Body = "Dear " + user + ", Your Password is  " + password + "\n\n\nThanks & Regards\nVirtual Blood Bank Management System";
            string toaddress = ResetEmail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Virtual Blood Services <virtualblood504@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }


    }
}