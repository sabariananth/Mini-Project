using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CogentInnovation
{
    public partial class Registraion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\CogentInnovationTask\\CogentInnovation\\CogentInnovation\\App_Data\\studentt.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //con.Open();
            //da = new SqlDataAdapter("Select*from Student", con);
            //da.Fill(ds, "Student");
            //GridView1.DataSource = (ds);
            //GridView1.DataBind();
            //con.Close();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegistration.aspx");
        }

    }
}