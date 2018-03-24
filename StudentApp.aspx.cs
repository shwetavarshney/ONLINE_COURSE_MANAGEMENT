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
public partial class StudentApp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        string Sn = Request.QueryString["Snm"];
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = con;
        cmd.CommandText = "select * from Student_Registration where Sname='" + Sn + "'";
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblSname.Text = Sn;
            lblRegNo.Text = dr.GetValue(0).ToString();
            lblCrs.Text = dr.GetString(1);
            lblDOB.Text = dr.GetDateTime(3).Day + "/" + dr.GetDateTime(3).Month + "/" + dr.GetDateTime(3).Year;
            lblSex.Text = dr.GetString(4);
            lblStatus.Text = dr.GetString(5);
            lblCNo.Text = dr.GetString(6);
            lblQlf.Text = dr.GetString(7);
            lblPY.Text = dr.GetString(8);
            lblFname.Text = dr.GetString(9);
            lblDOReg.Text = dr.GetDateTime(10).Day + "/" + dr.GetDateTime(10).Month + "/" + dr.GetDateTime(10).Year;
            lblAdd.Text = dr.GetString(11);
            lblEmail.Text = dr.GetString(12);
            Image2.ImageUrl = "~/Students Photo/" + dr.GetString(17);
        }
        dr.Close();
        con.Close();
    }
}
