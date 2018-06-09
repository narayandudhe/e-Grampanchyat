using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace grampan.adminweb
{
    public partial class removeuser : System.Web.UI.Page
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
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\grampan\grampan\Grampanchyat.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        }

        protected void removeuserb_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt16(UID.Text);
           
            string que = "delete from Grampanchyat where UID=" + uid + "";
            cmd = new SqlCommand(que, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('User Removed sucessfully')", true);
        }
    }
}