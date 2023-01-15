using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Virtual_Blood_Bank
{
    public partial class AdminBloodPortal : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["VirtualBloodBankConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null || Session["Role"].ToString() != "Admin")
                {
                    Response.Redirect("index.aspx");
                }
            }
        }

        protected void BloodInBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string User = Session["User"].ToString();
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_BloodStock", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@bs_name ", FirstNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@bs_contact ", MobileTextBox.Text);
                    cmd.Parameters.AddWithValue("@bs_city ", CityDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_hospital ", HospDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_BloodType ", BloodDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_In ", Convert.ToInt32(QuantityTextBox.Text));
                    cmd.Parameters.AddWithValue("@bs_out  ", 0);
                    cmd.Parameters.AddWithValue("@bs_InOutTime  ", DateTime.Now);
                    cmd.Parameters.AddWithValue("@bs_Admin  ", User);

                    con.Open();
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                       BloodStockLabel.Text = "Submitted Successfully";
                        BloodStockLabel.Visible = true;
                        Response.Write("<script>alert('Blood Inserted Successfully !!! Thanks..');window.location = 'AdminBloodPortal.aspx';</script>");
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                        //Response.Redirect("ContactUs.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Blood Inserted Failedddddd !!! Try  Again !!! ..');window.location = 'AdminBloodPortal.aspx';</script>");
                        BloodStockLabel.Text = "Insertation Failed !!!";
                        BloodStockLabel.Visible = true;
                    }

                    con.Close();

                }
                catch (Exception ex)
                {
                    BloodStockLabel.Text = "Error Occured " + ex.Message;
                    Response.Write("<script>alert('Blood Inserted Failedddddd !!! Try  Again !!! ..');</script>");
                }
            }


        }

        protected void BloodOutBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string User = Session["User"].ToString();
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_BloodStock", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@bs_name ", FirstNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@bs_contact ", MobileTextBox.Text);
                    cmd.Parameters.AddWithValue("@bs_city ", CityDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_hospital ", HospDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_BloodType ", BloodDropDownList.SelectedValue);
                    cmd.Parameters.AddWithValue("@bs_In ", 0);
                    cmd.Parameters.AddWithValue("@bs_out  ", Convert.ToInt32(QuantityTextBox.Text));
                    cmd.Parameters.AddWithValue("@bs_InOutTime  ", DateTime.Now);
                    cmd.Parameters.AddWithValue("@bs_Admin  ", User);

                    con.Open();
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        BloodStockLabel.Text = "Submitted Successfully";
                        BloodStockLabel.Visible = true;
                        Response.Write("<script>alert('Blood Out Successfully !!! Thanks..');window.location = 'AdminBloodPortal.aspx';</script>");
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                        //Response.Redirect("ContactUs.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Blood Given Failedddddd !!! Try  Again !!! ..');window.location = 'AdminBloodPortal.aspx';</script>");
                        BloodStockLabel.Text = "Insertation Failed !!!";
                        BloodStockLabel.Visible = true;
                    }

                    con.Close();

                }
                catch (Exception ex)
                {
                    BloodStockLabel.Text = "Error Occured " + ex.Message;
                    Response.Write("<script>alert('Blood Given Failedddddd !!! Try  Again !!! ..');</script>");
                }
            }
        }

        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InOutBloodRecord.aspx");
        }
    }
}