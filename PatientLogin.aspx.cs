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
    public partial class PatientLogin : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        int res;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            Session["PassRecov"] = "Patient";
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("select Patient_Id from Patient where Patient_Username='" + TextBox1.Text.Trim() + "'and Patient_Password='" + TextBox2.Text.Trim() + "'", con);
            con.Open();
            res = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (res == 0)
            {
                Label1.Text = "Username And Password is Invalid....!";
                
            }
            else
            {
                Session["id"] = res;
                Response.Redirect("~/PatientDetails.aspx");
                con.Close();
                
            }
        }
    }
}