using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Drawing;

namespace Virtual_Blood_Bank
{
    public partial class MasterBloodBank : System.Web.UI.MasterPage
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;

        string userProfileImage, fullName, url = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {

                    //Response.Write("Welcome " + Session["user"].ToString());
                    //userProfileImage = Session["image"];

                    //Image1.ImageUrl = Session["image"].ToString();
                    //userProfileImage = Session["user"].ToString();
                    //LabelUserName.Text = userProfileImage;

                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        string email2 = Session["Email"].ToString();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Select * from donor_user where d_email = @d_email", con);
                        cmd.Parameters.AddWithValue("@d_email", email2);
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();

                        if (sdr.HasRows)
                        {
                            while (sdr.Read())
                            {
                                fullName = sdr["d_firstName"].ToString() + " " + sdr["d_lastName"].ToString();
                                url = sdr["d_image"].ToString();
                            }

                        }
                        Image1.ImageUrl = url;
                        LabelUserName.Text = fullName;

                        con.Close();
                    }
                }

                else
                {
                    Response.Redirect("signin.aspx");
                }
                    }
                   
                }
            
        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            if(Session["User"] != null)
            {
                Session["User"] = null;
            }
            Response.Redirect("index.aspx");
        }
    }
}