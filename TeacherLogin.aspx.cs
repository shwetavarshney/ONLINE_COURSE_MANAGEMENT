using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class TeacherLogin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;
    }
    void clear()
    {
        txtUser.Text = "";
        txtPass.Text = "";
    }
    protected void butLogin_Click(object sender, EventArgs e)
    {
        if (txtPass.Text != "" && txtUser.Text != "")
        {
            SqlDataReader dr;
            cmd.CommandText = "select T_code,Course_ID,Year_Semeter,Subject from Teacher_Registration where Username='" + txtUser.Text + "' and Upassword='" + txtPass.Text + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("Tc", dr.GetString(0));
                Session.Add("crs", dr.GetString(1));
                Session.Add("sem", dr.GetString(2));
                Session.Add("sub", dr.GetString(3));
                Response.Redirect("CourseMaterial.aspx");
                dr.Close();
                con.Close();
            }
            else
            {
                lblerr.Text = "Invalid Username & Password";
            }
            
        }
        else
        {
            lblerr.Text = "UserName & Password Cannot be Blank";
        }
    }
    protected void butClear_Click(object sender, EventArgs e)
    {
        clear();
    }
}
