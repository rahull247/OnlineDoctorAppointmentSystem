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
    public partial class AddPrescription : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Update Appointment SET Prec='" + TextBox2.Text + "',Note='" + TextBox3.Text + "' where AppId='" + TextBox1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Added Succesfully...";
            con.Close();
        }
    }
}