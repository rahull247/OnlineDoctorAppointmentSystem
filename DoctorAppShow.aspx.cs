using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DocOnline
{
    public partial class DoctorAppShow : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            SqlCommand cmd = new SqlCommand("SELECT AppId,Patient_Name,AppDate,Timeslot,Prec,Note FROM Appointment,Patient,Timeslot Where Patient_Id=pid AND AppTime=TId AND did='" + Session["id"].ToString() + "'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dtb = new DataTable();
            dtb.Load(sdr);
            GridView1.DataSource = dtb;
            GridView1.DataBind();
            con.Close();
        }
    }
}