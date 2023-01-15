using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Virtual_Blood_Bank
{
    public partial class AdminAllRequiredBlood : System.Web.UI.Page
    {
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
    }
}