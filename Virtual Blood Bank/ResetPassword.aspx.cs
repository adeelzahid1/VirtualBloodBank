using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Virtual_Blood_Bank
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("signin.aspx");
            }
        }

        protected void SaveNewPasswordbtn_Click(object sender, EventArgs e)
        {
            string mycon = "Data Source=ADEELZAHID\\SQLEXPRESS;Initial Catalog=VirtualBloodBank;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from donor_user";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon; SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String pass;
            pass = ds.Tables[0].Rows[0]["d_password"].ToString();
            //email = ds.Tables[1].Rows[0]["email"].ToString();
            scon.Close();
            if (pass == TextBox1.Text)
            {
                if (PasswordTextBox.Text == CPasswordTextBox.Text && PasswordTextBox.Text != "")
                {
                    string MyEmail = Session["Email"].ToString();
                    String cs = "Data Source=ADEELZAHID\\SQLEXPRESS;Initial Catalog=VirtualBloodBank;Integrated Security=True";
                    SqlConnection conn = new SqlConnection(cs);

                    String UpdatePassQuery = "update donor_user set d_password = @d_password where d_email = @d_email";
                    SqlCommand cmd1 = new SqlCommand(UpdatePassQuery,conn);

                    cmd1.Parameters.AddWithValue("@d_password", CPasswordTextBox.Text.Trim());
                    cmd1.Parameters.AddWithValue("@d_email", MyEmail);
                    
                    conn.Open();
                    cmd1.ExecuteNonQuery();
                    conn.Close();

                    Response.Write("<script>alert('Your Password Changes Successfully !!! Please Login Again..');window.location = 'ContactUs.aspx';</script>");
                    Session.Abandon();
                    
                }
                else { Label1.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted"; }
            }
            else { Label1.Text = "Invalid Password - Cannot Change Password with User Authentication"; }
        }
    }
}