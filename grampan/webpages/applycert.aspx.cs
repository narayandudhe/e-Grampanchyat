using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace grampan.webpages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\grampan\grampan\Grampanchyat.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            string que = "select * from Grampanchyat  where UID ='" + Session["normal"] + "'";
            cmd = new SqlCommand(que, con);
            con.Open();
            rdr = cmd.ExecuteReader();
            rdr.Read();

            
            Fname.Text = rdr[1].ToString();
            Mname.Text=rdr[2].ToString();
            Lname.Text=rdr[3].ToString();
            Village.Text = rdr[10].ToString();
            Taluka.Text = rdr[14].ToString();
            Dist.Text = rdr[15].ToString();
            
            rdr.Close();
            con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "pending";
           
            string qu = "insert into certificaterequest values('" + Session["normal"] + "','"+DateTime.Today.ToString()+"','"+certificateselect.Text+"','" + s + "')";
            cmd = new SqlCommand(qu, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('certificate request are Saveed in Database ')", true);
        
        }
    }
}