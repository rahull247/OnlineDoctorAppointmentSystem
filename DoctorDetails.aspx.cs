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
    public partial class DoctorDetails : System.Web.UI.Page
    {   ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    String DocId = Session["id"].ToString();
                    c = new ConnectionDAO();
                    con = c.GetConnection();
                    SqlCommand cmd = new SqlCommand("select DocName,Speciality,DocGender,DocMob from DocTable,DocAdd where DocType=SId AND DocId='" + DocId + "'", con);
                    SqlDataReader rdr;
                    con.Open();
                    rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        Label1.Text = rdr.GetString(0);
                        Label2.Text = rdr.GetString(1);
                        Label3.Text = rdr.GetString(2);
                        Label4.Text = rdr.GetString(3);

                    }
                    con.Close();

                }
            }
            else
            {

            }
         }
    }
}