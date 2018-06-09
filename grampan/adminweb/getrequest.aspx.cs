using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grampan.adminweb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null )
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (GridView1.SelectedIndex == i)
                {

                  Session["user"] = GridView1.Rows[i].Cells[2].Text;

                }
            } 
        }
    }
}