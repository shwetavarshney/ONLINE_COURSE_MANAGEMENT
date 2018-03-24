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

public partial class B_C_A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Rg"] == null || Session["Enrol"] == null)
            Response.Redirect("Student_Login.aspx");
        else
        {
            lblRegNo.Text = "    " + Session["Rg"];
            lblEnrol.Text = "     " + Session["Enrol"];
        }
            
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BCALink.aspx");
    }
}
