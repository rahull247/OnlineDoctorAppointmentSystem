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
    public partial class DoctorLogin : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c =new ConnectionDAO();
            con = c.GetConnection();
            Session["PassRecov"] = "DocTable";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select DocId from DocTable where DocUsername='" + TextBox1.Text.Trim() + "'and DocPassword='" + TextBox2.Text.Trim() + "'", con);
            int res = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (res == 0)
            {
                Label1.Text = "Username And Password is Invalid....!";
                
            }
            else
            {
                Session["id"] = res;
                Response.Redirect("~/DoctorDetails.aspx");
            }
        }
    }
}