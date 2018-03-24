using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MCALink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/files/lisp_tutorial.pdf");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/files/java.pdf");
    }
}