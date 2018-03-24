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

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void lnkteacher_Click1(object sender, EventArgs e)
    {
        Response.Redirect("TeacherReg.aspx");
    }
    
    protected void lnkLAnnonce0_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Course Details.aspx");
    }
       
       protected void LinkButton1_Click(object sender, EventArgs e)
       {
           Response.Redirect("LatestNews.aspx");
       }
       protected void lnkApp(object sender, EventArgs e)
       {
           Response.Redirect("ApprovalApp.aspx");
       }
}
