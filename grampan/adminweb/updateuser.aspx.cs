using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace grampan.adminweb
{
    public partial class updateuser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
            GridView1.Visible = false;
            Label5.Visible = false;
        }

        protected void updatesubmit_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
           
        }    
    }

}