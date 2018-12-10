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
    public partial class DoctorUpdateDetails : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        int SpecialityId;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            if (!IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand("Select Speciality from DocAdd", con);
                con.Open();
                SqlDataReader sdr = cmd1.ExecuteReader();
                DataTable dtb = new DataTable();
                dtb.Load(sdr);
                DropDownList1.DataSource = dtb;
                DropDownList1.DataTextField = "Speciality";
                DropDownList1.DataValueField = "Speciality";
                DropDownList1.DataBind();
                con.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            

            SqlCommand cmd3 = new SqlCommand("select SId from DocAdd where Speciality='" + DropDownList1.SelectedValue + "'", con);
            con.Open();
            SpecialityId = Convert.ToInt32(cmd3.ExecuteScalar()); 
            con.Close();
            
            string Gender;
            if (RadioButton1.Checked)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "Female";
            }

            SqlCommand cmd = new SqlCommand("Update DocTable set DocType='" + SpecialityId + "',DocName='" + TextBox1.Text + "',DocGender='" + Gender + "',DocMob='" + TextBox4.Text + "'where DocId='" + Session["id"].ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
             Label1.Text = "Details Updated Successfully...";
                Response.Redirect("~/DoctorDetails.aspx");
        }
    }
}