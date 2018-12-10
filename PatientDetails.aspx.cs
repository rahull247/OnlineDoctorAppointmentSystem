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
    public partial class PatientDetails : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    string id = Session["id"].ToString();
                    c = new ConnectionDAO(); 
                    con=c.GetConnection();
                    SqlCommand cmd = new SqlCommand("Select Patient_Name,Patient_Gender,Patient_Address,Patient_BloodGrp,Patient_MobNo from Patient where Patient_Id='"+id+"';",con);
                    SqlDataReader rdr;
                    con.Open();
                    rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {   /* Session Sended to the AppoinmentPage of Patient */
                        
                        Label1.Text = rdr.GetString(0);
                        Label2.Text = rdr.GetString(1);
                        Label3.Text = rdr.GetString(2);
                        Label4.Text = rdr.GetString(3);
                        Label5.Text = rdr.GetString(4);
                        Session["PatientMobNo"] = rdr.GetString(4);
                        
                    }
                    con.Close();
                    
                }
                else
                {
                
                }
            }
        }
    }
}