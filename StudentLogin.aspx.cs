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
public partial class StudentLogin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;
    }
    protected void butLogin_Click(object sender, EventArgs e)
    {
        if(txtPass.Text!="" && txtUser.Text!="")
        {
        SqlDataReader dr;
        String crs;
        cmd.CommandText="select Reg_No,Course_ID,Enrolment_No from Approval_Data where uname='"+ txtUser.Text+"' and upassword='"+txtPass.Text+"'";
        if(con.State==ConnectionState.Closed)
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("Rg", dr.GetValue(0));
            Session.Add("Enrol", dr.GetString(2));
            crs = dr.GetString(1);
            if (crs.Equals("BCS001"))
                Response.Redirect("B_C_A.aspx");
            if (crs.Equals("BT002"))
                Response.Redirect("B_Tech.aspx");
            if (crs.Equals("MCS003"))
                Response.Redirect("MCA.aspx");
            if (crs.Equals("MT004"))
                Response.Redirect("M_Tech.aspx");

        }
        else
        {
            lblmsg.Text = "Invalid Username & Password";
        }
        dr.Close();
        con.Close();
        }
        else
        {
            lblmsg.Text = "Username & password Cannot be Blank";
        }
       
        }
    protected void butClear_Click(object sender, EventArgs e)
    {
        txtUser.Text="";
        txtPass.Text = "";
    }
}

