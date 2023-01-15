using System;
using System.Collections.Generic;
using System.IO;
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
    public partial class RequestBlood : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;
        string Email, Mobile, City, Address, url, BloodGroup, fullName;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        Email = sdr["d_email"].ToString();
                        Mobile = sdr["d_mobile"].ToString();
                        Address = sdr["d_address"].ToString();
                        url = sdr["d_image"].ToString();
                        City = sdr["d_city"].ToString();
                        BloodGroup = sdr["d_bloodgroup"].ToString();
                    }
                }
                Image1.ImageUrl = url;
                FullNameTextBox.Text = fullName;
                EmailTextBox.Text = Email;
                MobileTextBox.Text = Mobile;
                AddressTextBox.Text = Address;
                CityDropDownList.SelectedValue = City;
                BloodDropDownList.SelectedValue = BloodGroup;

                con.Close();
               }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SP_RequestBlood", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@r_name", FullNameTextBox.Text);
                cmd.Parameters.AddWithValue("@r_email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@r_mobile", MobileTextBox.Text);
                cmd.Parameters.AddWithValue("@r_addres", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@r_city", CityDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@r_blood", BloodDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@r_img", url);
                cmd.Parameters.AddWithValue("@r_requireDate", Convert.ToDateTime(WhenRequiredBloodTextBox.Text).ToString("yyyy-MM-dd hh:mm:ss.fff"));
                cmd.Parameters.AddWithValue("@r_requestDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@r_userAC", Session["user"].ToString());
                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    LabelReqBlood.Text = "Submitted Successfully";
                    LabelReqBlood.Visible = true;
                }
                else
                {
                    LabelReqBlood.Text = "Submitted Failed !!!";
                    LabelReqBlood.Visible = true;
                }

                con.Close();
            }
        }
    }
}