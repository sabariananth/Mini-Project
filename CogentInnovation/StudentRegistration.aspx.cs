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
    public partial class StudentRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\CogentInnovationTask\\CogentInnovation\\CogentInnovation\\App_Data\\studentt.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rdbMale.AutoPostBack = true;
                rdbFemale.AutoPostBack = true;
                ddlSubject.AutoPostBack = true;
                ddlSubject.ToString();
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string gender,subject;
            if (rdbMale.Checked == true)
                gender = rdbMale.Text;
            else
                gender = rdbFemale.Text;

            subject = ddlSubject.SelectedValue.ToString();

            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Insert into Student values('" + txtName.Text + "','" + txtDOB.Text + "','" + txtAge.Text + "','" + gender + "','" + txtPhoneNo.Text + "','" + txtEmail.Text + "','"+subject+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Submitted Successfull')</script>");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registraion.aspx");
        }
    }
}