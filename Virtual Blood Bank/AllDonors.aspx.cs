using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Virtual_Blood_Bank
{
    public partial class AllDonors : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;

            //if (Session["user"] != null && Session["Role"].ToString() == "User")
            //{

            //    Response.Write("Welcome " + Session["user"].ToString());
            //}
            //else
            //{
            //    Response.Redirect("signin.aspx");
            //}

            if (!IsPostBack)
            {
                if (Session["Role"].ToString() == "Admin")
                {
                    PrintDonor.Visible = true;
                }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

       

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            LabelFoundRecord.Text = e.AffectedRows.ToString();
            ViewState["Record"] = LabelFoundRecord.Text.ToString();


        }

        protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            LabelFoundRecord.Text = e.AffectedRows.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            LabelFoundRecord.Text = ViewState["Record"].ToString();
        }

        protected void PrintDonor_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllDonorsRecord.aspx");
        }
    }
}