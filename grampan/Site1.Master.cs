using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace grampan
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt=new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\grampan\grampan\Grampanchyat.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            if (Session["admin"] != null || Session["normal"] != null)
            {
                SubmitLogin.Visible = false;
                Panel1.Visible = true;
            }
            
            else if (Session["admin"] == null || Session["normal"]==null)
            {
                SubmitLogin.Visible = true;
            }



        }
        protected void Login_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "admin")
            {
                cmd.CommandText = "select * from admin where id='" + Username.Text + "' and password='" + Password.Text + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "admin");
                if (ds.Tables[0].Rows.Count > 0)
                {


                    
                    Session["admin"] = ds.Tables[0].Rows[0]["id"].ToString();
                    SubmitLogin.Visible = false;
                    Panel1.Visible = true;
                   
                   message.Text = "Welcome Admin";
                    Response.Redirect("admin.aspx");
                

                }
                else
                {


                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Enter Correct Username & password')", true);
                }
            }
            else if (DropDownList1.Text == "normal")
            {
                cmd.CommandText = "select * from Grampanchyat where Username='" + Username.Text + "' and Password='" + Password.Text + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Grampanchyat");
                if (ds.Tables[0].Rows.Count > 0)
                {

                    Session["normal"] = ds.Tables[0].Rows[0]["UID"].ToString();
                    SubmitLogin.Visible = false;

                    message.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                    Response.Redirect("userhome.aspx");
                   
                }
                else
                {


                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Enter Correct Username & password')", true);
                }
            }
            else if(DropDownList1.Text=="select")
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('select user from list')", true);
            }
    
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }

        
    }
}