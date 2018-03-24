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
public partial class CourseMaterial : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;
         if (Session["Tc"] == null || Session["crs"] == null || Session["sem"] == null || Session["sub"] == null)
         {
            Response.Redirect("TeacherLogin.aspx");
         }
        else
        {
            txtcode.Text = "" + Session["Tc"];
            txtcrs.Text = "" + Session["crs"];
            txtYSem.Text = "" + Session["sem"];
            txtSub.Text = "" + Session["sub"];
        }


        
    }
    protected void butUpload_Click(object sender, EventArgs e)
    {
        int c = 0;
        if (FU.HasFile)
        {
            string s = FU.FileName;
            int i = s.Length;
            string sa = s.Substring((i - 4), 4);
            cmd.CommandText = "select count(T_code) from Course_Material where T_code='" + txtcode.Text + "'";
            con.Open();

            if (cmd.ExecuteScalar() == null)
                c = 1;
            else
                c = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            string s1 = txtcode.Text + Convert.ToString(c) + sa;
            FU.SaveAs(Server.MapPath("~/") + "/Materials/" + s1);
            cmd.Connection = con;
            cmd.CommandText = "Insert into Course_Material values('" + txtcode.Text + "','" + s1 + "')";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            txtcode.Text = "";
            txtcrs.Text = "";
            txtSub.Text = "";
            txtYSem.Text = "";
            con.Close();
        }
    }
}
