using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace grampan.adminweb
{
    public partial class register : System.Web.UI.Page
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

        protected void RSubmit_Click(object sender, EventArgs e)
        {
            long mn = Convert.ToInt64(Mnumber.Text);
            int ag = Convert.ToInt32(Age.Text);
            int Hm = Convert.ToInt32(HomeNo.Text);
            decimal ic = Convert.ToDecimal(Income.Text);
            Int32 pc = Convert.ToInt32(PostalNo.Text);
            string fn = Fname.Text;
            string mna = Mname.Text;
            string lm = Lname.Text;
            string pw = Password.Text;
            string em = Email.Text;
            string mon = MotherName.Text;
            string vi = Villege.Text;
            string oc = Occuption.Text;
            string tq = Taluka.Text;
            string dist = Dist.Text;
            string un = Username.Text;
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".")+str);
            string path = str.ToString();
            string que = "insert into Grampanchyat values('" + fn + "','" + mna + "','" + lm + "','" + un + "','" + pw + "','" + em + "','" +mn + "','" + mon + "','" + ag + "','" + vi + "','" +Hm +"','" +oc +"','" +ic +"','" +tq +"','" + dist+"','" +pc +"','"+path+"')";
            cmd = new SqlCommand(que, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('User are Saveed in Database ')", true);
        }
    }
}