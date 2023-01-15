using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.IO;

namespace Virtual_Blood_Bank
{
    public partial class ContactUs : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;
        string name = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"] == null)
            {
                Response.Redirect("signin.aspx");
            }
            //name = Session["user"].ToString();
        }

        protected void ContactSubmitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try {
                    SqlCommand cmd = new SqlCommand("SpContactUs", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@name", FullNameContactTextBox.Text);
                    cmd.Parameters.AddWithValue("@email", EmailContactTextBox.Text);
                    cmd.Parameters.AddWithValue("@city", CityContactTextBox.Text);
                    cmd.Parameters.AddWithValue("@mesage", MessageContactTextBox.Text);
                    cmd.Parameters.AddWithValue("@dateOfContact", DateTime.Now);
                    cmd.Parameters.AddWithValue("@userName", name);

                    con.Open();
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                       ContactLabel.Text = "Submitted Successfully";
                        ContactLabel.Visible = true;
                        Response.Write("<script>alert('Your Message Recieved Successfully !!! Thanks for Contact us..');window.location = 'signin.aspx';</script>");
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                        //Response.Redirect("ContactUs.aspx");
                    }
                    else
                    {
                        ContactLabel.Text = "Submitted Failed !!!";
                        ContactLabel.Visible = true;
                    }

                    con.Close();

                }
                catch(Exception ex)
                {
                    ContactLabel.Text = "Error Occured " + ex.Message;
                }
            }
        }

        void clear()
        {
            FullNameContactTextBox.Text = "";
            EmailContactTextBox.Text = " ";
            CityContactTextBox.Text = " ";
            MessageContactTextBox.Text = " ";
        }
    }
}