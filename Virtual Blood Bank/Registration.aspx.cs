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
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;

        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 40; i < 90; i++)
                {
                    WeightDropDownList.Items.Add(i.ToString() + " KG");
                }
            }

            if (Session["user"] != null)
            {
                Response.Write("<script>alert('You Are Already Registered !!') </script>");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('You Are Already Registered !! ') </Script>");
                Response.Redirect("index.aspx");


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (validImg() == true)
            {
                if (ImageFileUpload.HasFile)
                {
                    Random rnd = new Random();
                    string fileName = FirstNameTextBox.Text + "-" + LastNameTextBox.Text + "-" + rnd.Next(100, 9999).ToString() + ".jpg";
                    string path = Server.MapPath("userImage/") + fileName;
                    ImageFileUpload.SaveAs(path);

                    //Other Queryyyyy
                    string UserType = string.Empty;
                    if (DonationCheckBox.Checked)
                    {
                        UserType = "DONOR";
                    }
                    else
                    {
                        UserType = "User";
                    }


                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        try
                        {
                            SqlCommand cmd = new SqlCommand("sp_insert_donor", con);
                            cmd.CommandType = CommandType.StoredProcedure;


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
                            cmd.Parameters.AddWithValue("@d_password", CPasswordTextBox.Text);
                            cmd.Parameters.AddWithValue("@d_image", "userImage/" + fileName);
                            cmd.Parameters.AddWithValue("@d_regdate", DateTime.Now);
                            cmd.Parameters.AddWithValue("@d_isAllow", UserType);
                            cmd.Parameters.AddWithValue("@d_dtLastDonate", Convert.ToDateTime(LastDonateTextBox.Text).ToString("yyyy-MM-dd hh:mm:ss.fff"));
                            cmd.Parameters.AddWithValue("@roleidBloodBank", 2);


                            con.Open();
                            int a = cmd.ExecuteNonQuery();
                            if (a > 0)
                            {
                                submitLabel.Text = "Submitted Successfully";
                                clear();
                            }
                            else
                            {
                                submitLabel.Text = "Submitted Failed !!!";
                            }

                            con.Close();


                        }
                        catch (Exception ex)
                        {
                            submitLabel.Text = "Error Occured " + ex.Message;
                        }
                    }

                }



            }
            else
            {
                Response.Write("write something");
            }

            clear();
        }

        private Boolean validImg()
        {
            Boolean imagesaved = false;

            if (ImageFileUpload.HasFile)
            {
                string fileName = Path.GetFileName(ImageFileUpload.FileName);
                string extension = Path.GetExtension(fileName);
                HttpPostedFile postedFile = ImageFileUpload.PostedFile;
                int length = postedFile.ContentLength;

                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg" || extension.ToLower() == ".png")
                {
                    if (length <= 1000000)
                    {
                        LabelImg.Text = "Form Submitted Successfully";
                        LabelImg.ForeColor = System.Drawing.Color.Red;
                        LabelImg.Visible = true;
                        imagesaved = true;
                    }
                    else
                    {
                        LabelImg.Text = "Image Size Must be Less Then 1MB";
                        LabelImg.ForeColor = Color.Red;
                        LabelImg.Visible = true;
                    }

                }
                else
                {
                    LabelImg.Text = "Image must be JPG or PNG or JPEG";
                    LabelImg.ForeColor = System.Drawing.Color.Red;
                    LabelImg.Visible = true;
                }
            }
            else
            {
                LabelImg.Text = "Please Upload an Image";
                LabelImg.ForeColor = System.Drawing.Color.Red;
                LabelImg.Visible = true;
            }

            return imagesaved;
        }




        protected void ResetButton_Click(object sender, EventArgs e)
        {
            clear();
        }
        void clear()
        {
            FirstNameTextBox.Text = " ";
            LastNameTextBox.Text = " ";
            GenderDropDownList.SelectedValue = null;
            EmailTextBox.Text = " ";
            MobileTextBox.Text = " ";
            BloodDropDownList.SelectedValue = null;
            //AgeDropDownList.SelectedValue = null;
            AgeTextBox.Text = " ";
            WeightDropDownList.SelectedValue = null;
            NICTextBox.Text = " ";
            CityDropDownList.SelectedValue = null;
            AddressTextBox.Text = " ";
            LastDonateTextBox.Text = "";
            PasswordTextBox.Text = " ";
            CPasswordTextBox.Text = " ";


        }


    }

}