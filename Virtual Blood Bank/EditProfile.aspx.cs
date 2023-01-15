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
using System.Globalization;

namespace Virtual_Blood_Bank
{
    public partial class EditProfile : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;
        string Fname, Lname, Gender, Email, Mobile, BloodGroup, Age, Weight, Nic, Hospital, City, Address, LastDonation, donnorStr, donorID, LastDonationAct, url, displayAge = string.Empty;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 40; i < 90; i++)
                {
                    WeightDropDownList.Items.Add(i.ToString() + " KG");

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
                                //donorID = sdr["d_id"].ToString();
                                Fname = sdr["d_firstName"].ToString();
                                Lname = sdr["d_lastName"].ToString();
                                Gender = sdr["d_gender"].ToString();
                                Weight = sdr["d_weight"].ToString();
                                Nic = sdr["d_cnic"].ToString();
                                Hospital = sdr["d_hospital"].ToString();
                                Email = sdr["d_email"].ToString();
                                Mobile = sdr["d_mobile"].ToString();
                                Address = sdr["d_address"].ToString();
                                lblImage.Text = sdr["d_image"].ToString();



                                City = sdr["d_city"].ToString();
                                BloodGroup = sdr["d_bloodgroup"].ToString();
                                //Password = sdr["d_password"].ToString();
                                //Password = sdr["d_password"].ToString();
                                Age = Convert.ToDateTime(sdr["d_BirthYear"]).ToString("MM/dd/yyyy");
                                LastDonation = Convert.ToDateTime(sdr["d_dtLastDonate"]).ToString("MM/dd/yyyy");

                                donnorStr = sdr["d_isAllow"].ToString();
                                if (donnorStr == "DONOR")
                                {
                                    DonationCheckBox.Checked = true;
                                }
                                else
                                {
                                    DonationCheckBox.Checked = false;
                                }


                                //string format = "MM/dd/yyyy hh:mm:ss tt";

                                //DateTime dage = DateTime.ParseExact(Age, format, CultureInfo.InvariantCulture);
                                //displayAge = dage.ToString("MM/dd/yyyy");

                                //DateTime Lastdonate = DateTime.ParseExact(LastDonation, format, CultureInfo.InvariantCulture);
                                //LastDonationAct = Lastdonate.ToString("MM/dd/yyyy");



                            }
                        }
                        ImageProfile.ImageUrl = lblImage.Text;
                        FirstNameTextBox.Text = Fname;
                        LastNameTextBox.Text = Lname;
                        GenderDropDownList.SelectedValue = Gender;
                        WeightDropDownList.SelectedValue = Weight;
                        NICTextBox.Text = Nic;
                        HospDropDownList.SelectedValue = Hospital;
                        EmailTextBox.Text = Email;
                        MobileTextBox.Text = Mobile;
                        AddressTextBox.Text = Address;
                        CityDropDownList.SelectedValue = City;
                        BloodDropDownList.SelectedValue = BloodGroup;
                        AgeTextBox.Text = Age;
                        LastDonateTextBox.Text = LastDonation;

                        //PasswordTextBox.Text = Password;
                        //CPasswordTextBox.Text = Password;
                        con.Close();
                    }
                }
            }




        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("update_donor_user", con);
                if (ImageFileUpload.HasFile)
                {
                    File.Delete(Server.MapPath(lblImage.Text));
                    Random rnd = new Random();
                    string fileName = FirstNameTextBox.Text + "-" + LastNameTextBox.Text + "-" + rnd.Next(100, 9999).ToString() + ".jpg";
                    string path = Server.MapPath("userImage/") + fileName;
                    ImageFileUpload.SaveAs(path);



                    string UserType = string.Empty;
                    if (DonationCheckBox.Checked)
                    {
                        UserType = "DONOR";
                    }
                    else
                    {
                        UserType = "User";
                    }



                  //  SqlCommand cmd = new SqlCommand("update_donor_user", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@d_id", Session["DonorId"].ToString());
                    cmd.Parameters.AddWithValue("@d_firstName", FirstNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_lastName", LastNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_gender", GenderDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_email", EmailTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_mobile", MobileTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_bloodgroup", BloodDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_BirthYear", Convert.ToDateTime(AgeTextBox.Text).ToString("yyyy-MM-dd hh:mm:ss.fff"));
                    cmd.Parameters.AddWithValue("@d_weight", WeightDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_cnic", NICTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_hospital", HospDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_city", CityDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_address", AddressTextBox.Text);

                    cmd.Parameters.AddWithValue("@d_image", "userImage/" + fileName);

                    cmd.Parameters.AddWithValue("@d_isAllow", UserType);

                }
                else
                {

                    string UserType = string.Empty;
                    if (DonationCheckBox.Checked)
                    {
                        UserType = "DONOR";
                    }
                    else
                    {
                        UserType = "User";
                    }



                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@d_id", Session["DonorId"].ToString());
                    cmd.Parameters.AddWithValue("@d_firstName", FirstNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_lastName", LastNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_gender", GenderDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_email", EmailTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_mobile", MobileTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_bloodgroup", BloodDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_BirthYear", Convert.ToDateTime(AgeTextBox.Text).ToString("yyyy-MM-dd hh:mm:ss.fff"));
                    cmd.Parameters.AddWithValue("@d_weight", WeightDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_cnic", NICTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_hospital", HospDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_city", CityDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@d_address", AddressTextBox.Text);
                    cmd.Parameters.AddWithValue("@d_image", lblImage.Text);
                    cmd.Parameters.AddWithValue("@d_isAllow", UserType);

                }
                //cmd.Parameters.AddWithValue("@d_dtLastDonate", Convert.ToDateTime(LastDonateTextBox.Text).ToString("yyyy-MM-dd hh:mm:ss.fff"));
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {

                    updateLabel.Visible = true;
                    LabelImg.Text = "Update Profile Successfully";
                    //Response.Redirect("RequestBlood.aspx");
                    Response.Redirect("EditProfile.aspx");
                    updateLabel.Text = "Update Profile Successfully";
                }
                else
                {
                    updateLabel.Text = "Update Failed !!!";
                    updateLabel.Visible = true;
                }
                con.Close();
            }
        }
    }
}