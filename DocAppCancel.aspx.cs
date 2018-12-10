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
    public partial class DocAppCancel : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;

        public void Display()
        {
            SqlCommand cmd = new SqlCommand("SELECT AppId,Patient_Name,AppDate,Timeslot FROM Appointment,Patient,Timeslot Where Patient_Id=pid AND AppTime=TId AND did='" + Session["id"].ToString() + "'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dtb = new DataTable();
            dtb.Load(sdr);
            GridView1.DataSource = dtb;
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();

            Display();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from Appointment where AppId='" + TextBox1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            MessegeLabel.Text = "Appointment Cancel Successfully !";
            con.Close();
            Display();

        }
    }
}