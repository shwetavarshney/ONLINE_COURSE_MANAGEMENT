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
public partial class AdminLogin : System.Web.UI.Page
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
        txtPass.Text = "";
        txtUser.Text = "";
    }
    protected void butLogin_Click(object sender, EventArgs e)
    {
        if (txtPass.Text != "" && txtUser.Text != "")
        {
            SqlDataReader dr;
            cmd.CommandText = "select* from Administrator_Login where Admin_Username='" + txtUser.Text + "' and Admin_Password='" + txtPass.Text + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                lblerr.Text = "Invalid UserName & Password!";
            }
        }
        else
        {
            lblerr.Text = "UserName & Password Cannot be Blank";
        }
    }
}
