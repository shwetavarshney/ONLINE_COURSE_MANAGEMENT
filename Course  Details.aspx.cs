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
public partial class Course__Details : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;
    }
    void clear()
    {
        txtCNm.Text ="";
        txtId.Text = "";
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        if (txtId.Text != "" && txtCNm.Text != "")
        {
            cmd.CommandText = "Insert into Course_Details(Course_ID,Course_Name) values('" + txtId.Text.Trim() + "','" + txtCNm.Text.Trim() + "')";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblMsg.Text = "Course Detail Sucessfully submitted";
            clear();
        }
        else
        {
            lblMsg.Text = "Any Field Cannot be Blank";
        }
    }
}
