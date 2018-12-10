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
    public partial class PatientUpdateDetails : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {    string Gender;
        if (RadioButton1.Checked)
        {
            Gender = "Male";
        }
        else
        {
            Gender="Female";
        }
        SqlCommand cmd = new SqlCommand("Update Patient set Patient_Name='"+TextBox1.Text+"',Patient_Gender='"+Gender+"',Patient_MobNo='"+TextBox4.Text+"',Patient_Address='"+TextBox3.Text+"',Patient_BloodGrp='"+DropDownList1.Text+"'where Patient_Id='"+Session["id"].ToString()+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Details Updated Successfully...";
        Response.Redirect("~/PatientDetails.aspx");
        
        
        }

    }
}