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
    public partial class DocAddDashboard : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                populateGridview();
            }
        }

        void populateGridview()
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from Login1",con);
            DataTable dtb = new DataTable();
            sda.Fill(dtb);
            if (dtb.Rows.Count > 0)
            {
                AdminAdd.DataSource = dtb;
                AdminAdd.DataBind();
            }
            else
            {
                dtb.Rows.Add(dtb.NewRow());
                AdminAdd.DataSource = dtb;
                AdminAdd.DataBind();
                AdminAdd.Rows[0].Cells.Clear();
                AdminAdd.Rows[0].Cells.Add(new TableCell());
                AdminAdd.Rows[0].Cells[0].ColumnSpan = dtb.Columns.Count;
                AdminAdd.Rows[0].Cells[0].Text = "No Data Found...!";
                AdminAdd.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
            con.Close();
        }

        protected void AddAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            ConnectionDAO c;
            SqlConnection con;
            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    c = new ConnectionDAO();
                    con = c.GetConnection();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Login1 values('" + (AdminAdd.FooterRow.FindControl("TextBox1foot") as TextBox).Text.Trim() + "','" + (AdminAdd.FooterRow.FindControl("TextBox2foot") as TextBox).Text.Trim() + "');", con);
                    cmd.ExecuteNonQuery();
                    populateGridview();
                    Label3.Text = "New Record Added";
                    con.Close();
                }
            }
            catch (Exception ex)
            {

                Label4.Text =ex.Message;
            }
        
        }

        protected void EditAdmin_RowCommand(object sender, GridViewEditEventArgs e)
        {
            AdminAdd.EditIndex = e.NewEditIndex;
            populateGridview();
        }

        protected void CancelAdmin_RowCommand(object sender, GridViewCancelEditEventArgs e)
        {
            AdminAdd.EditIndex = -1;
            populateGridview();

        }

        protected void SaveAdmin_RowCommand(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                    
                    c = new ConnectionDAO();
                    con = c.GetConnection();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update Login1 set Username='" + (AdminAdd.Rows[e.RowIndex].FindControl("TextBox1") as TextBox).Text.Trim() + "',Password='" + (AdminAdd.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text.Trim() + "') where AdminId='" + (Convert.ToInt32(AdminAdd.DataKeys[e.RowIndex].Value.ToString())) + "'", con); 
                    cmd.ExecuteNonQuery();
                    populateGridview();
                    Label3.Text = "Selected Row Upadted";
                    con.Close();
                
            }
            catch (Exception ex)
            {

                Label4.Text = ex.Message;
            }
        
        }

        protected void DeleteAdmin_RowCommand(object sender, GridViewDeleteEventArgs e)
        {
                try
            {

                 
                    c = new ConnectionDAO();
                    con = c.GetConnection();
                    con.Open();
                    //SqlCommand cmd = new SqlCommand("delete from Login where Username='"+(AdminAdd.DataKeys[e.RowIndex])+ "';",con);
                    SqlCommand cmd = new SqlCommand("delete from Login1 where AdminId=@id", con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(AdminAdd.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    populateGridview();
                    Label3.Text = "Select Record Deleted";
                    con.Close();
                    
                
            }
            catch (Exception ex)
            {

                Label4.Text = ex.Message;
            }
         }

        }

    }
