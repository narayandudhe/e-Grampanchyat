using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grampan.adminweb
{
    public partial class rejected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           rejectedapp.Text = Convert.ToString(Session["user"]);
        }

        protected void rejectedapp_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}