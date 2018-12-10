using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DocOnline
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
           Session["PassRecov"]="AdminPassword";
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select Username from Login1 where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            con.Open();
            String res = Convert.ToString(cmd.ExecuteScalar());
            
            if (res == TextBox1.Text)
            {
                Session["Name"] = TextBox1.Text;
                Response.Redirect("~/AdminDashboard.aspx");
                con.Close();
            }
            else
            {
                Label1.Text = "Username And Password is invalid !";
                con.Close();
            }
            
        }
    }
}