using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Virtual_Blood_Bank
{
    public partial class signin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;
        string userProfileLink = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                //Response.Write("<script>alert('You Are Already Sign In !!') </script>");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('You Are Already Sign In !! ') </Script>");
                Response.Redirect("index.aspx");
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('Already Registered !! ') </Script>");
            }

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string userName;
            SqlConnection Con = new SqlConnection(cs);

            string query = "SELECT dbo.BloodBankRole.roleName, dbo.donor_user.d_id, dbo.donor_user.d_firstName, dbo.donor_user.d_lastName, dbo.donor_user.d_image, dbo.donor_user.d_email, dbo.donor_user.d_password FROM dbo.BloodBankRole INNER JOIN dbo.donor_user ON dbo.BloodBankRole.id = dbo.donor_user.roleidBloodBank where d_email = @d_email and d_password = @d_password";
            SqlCommand cmd = new SqlCommand(query, Con);

            cmd.Parameters.AddWithValue("@d_email", loginEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@d_password", loginPassword.Text.Trim());

            Con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    //Session["user"] = sdr["d_firstName"].ToString() + " " + sdr["d_lastName"].ToString() + " " + sdr["d_image"].ToString();// EmailLoginTextBox.Text;
                    Session["user"] = sdr["d_firstName"].ToString() + " " + sdr["d_lastName"].ToString();
                    userName = sdr["d_firstName"].ToString() + " " + sdr["d_lastName"].ToString();
                    Session["image"] = sdr["d_image"].ToString();
                    Session["Role"] = sdr["roleName"].ToString();
                    Session["Email"] = sdr["d_email"].ToString();
                    Session["DonorId"] = sdr["d_id"].ToString();
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successfully') </script>");
                    
                    if (Session["Role"].ToString() == "Admin")
                    {
                        Response.Redirect("AdminAllMembers.aspx");

                    }
                    else
                    {
                        Response.Redirect("AllDonors.aspx");
                        //Response.Write("Login Sucess");
                    }

                }
                
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!') </script>");
            }
            Con.Close();
            //clear();

        }
    }
}