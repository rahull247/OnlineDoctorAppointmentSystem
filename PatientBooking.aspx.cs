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
    public partial class PatientBooking : System.Web.UI.Page
    {   ConnectionDAO c;
        SqlConnection con;
        int did;
        int TimeSlot;
        int SpecialityId;
        protected void Page_Load(object sender, EventArgs e)
        { 
            
            c = new ConnectionDAO();
            con = c.GetConnection();
            if (!IsPostBack)
            {
                
                /* Patient Name */
                
                 SqlCommand cmd5 = new SqlCommand("Select Patient_Name from Patient where Patient_Id='"+Session["id"].ToString()+"'", con);
                 con.Open();
                 Label1.Text = Convert.ToString(cmd5.ExecuteScalar()).ToString();
                 con.Close();

                 /* AppointMent ID */
                SqlCommand cmd = new SqlCommand("Select MAX(AppId) from Appointment", con);
                con.Open();
                Label2.Text = (Convert.ToInt32(cmd.ExecuteScalar())+ 1).ToString();
                con.Close();

             }
                if (!IsPostBack)
                {   /* Doctor Speciality */
                    SqlCommand cmd = new SqlCommand("select Speciality from DocAdd", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "Speciality";
                    DropDownList1.DataValueField = "Speciality";
                    DropDownList1.DataBind();
                    con.Close();


                    
                }

            }
    

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        { /* Calender Invisible on Button Click */
            if(Calendar1.Visible==false)
            {
                Calendar1.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //Genrating Speciality ID
            SqlCommand cmd3 = new SqlCommand("select SId from DocAdd where Speciality='" + DropDownList1.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr2;
            dr2 = cmd3.ExecuteReader();
            while (dr2.Read())
            {
                 SpecialityId = Convert.ToInt32("" + dr2[0]);
            }
            con.Close();

            //Using Id to Display Doc Name
            SqlCommand cmd2 = new SqlCommand("select DocName from DocTable where DocType='" +SpecialityId+ "'", con);
            con.Open();
            DropDownList2.DataSource = cmd2.ExecuteReader();
            DropDownList2.DataTextField = "DocName";
            DropDownList2.DataValueField = "DocName";
            DropDownList2.DataBind();
            con.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {   /*Getting Time */

            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            SqlCommand cmd2 = new SqlCommand("select Timeslot from Timeslot", con);
            con.Open();
            DropDownList3.DataSource = cmd2.ExecuteReader();
            DropDownList3.DataTextField = "Timeslot";
            DropDownList3.DataValueField = "Timeslot";
            DropDownList3.DataBind();
            con.Close();
            }

        

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {    
            //DocId Genrated
            SqlCommand cmd2 = new SqlCommand("select DocId from DocTable where DocName='" + DropDownList2.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr2;
            dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                did = Convert.ToInt32("" + dr2[0]);
            }
            con.Close();

            // Getting Time Id 
            SqlCommand cmd3 = new SqlCommand("select TId from Timeslot where Timeslot='" + DropDownList3.SelectedValue + "'", con);
            con.Open();
            SqlDataReader dr3; ;
            dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {
                TimeSlot = Convert.ToInt32("" + dr3[0]);
            }

            con.Close();

            /* Inserting value */ 
            SqlCommand cmd = new SqlCommand("insert into Appointment(pid, did, AppDate, AppTime) values('"+Session["id"].ToString()+"','"+did+"','"+TextBox1.Text+"','"+Convert.ToString(TimeSlot)+"');",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label3.Text = "Sucessfully Added";
            con.Close(); 
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }

        
    }
}