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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            c =new ConnectionDAO();
            con = c.GetConnection();
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("Insert into Login1 values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label6.Text = "Registered Successfully";
            con.Close();
       }
    }
}