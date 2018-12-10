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
    public partial class Contact_Us : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into contactus values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 0)
            {
                Label1.Text = "Somethings Wrong...:-(";
            }
            else
            {
                Label1.Text = "Thank You....Admin Will Contact You....:-)";
            }
        }
    }
}