using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DocOnline
{
    public class ConnectionDAO
    {
        public SqlConnection con;
        public SqlConnection GetConnection()
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Source Code\Visual_Studio\DocOnline\DocOnline\App_Data\DocDatabase.mdf;Integrated Security=True;User Instance=True");
            return con;
        }
        public void CloseConnection()
        {
            con.Close();
        }
    }
}