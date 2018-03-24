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
public partial class LatestNews : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;
        if (Page.IsPostBack == false)
        {
            int i;
            for (i = 1; i <= 31; i++)
            {
                dd.Items.Add(i.ToString());
            }
            mm.Items.Add("Jan");
            mm.Items.Add("Feb");
            mm.Items.Add("Mar");
            mm.Items.Add("April");
            mm.Items.Add("May");
            mm.Items.Add("Jun");
            mm.Items.Add("July");
            mm.Items.Add("Aug");
            mm.Items.Add("Sep");
            mm.Items.Add("Oct");
            mm.Items.Add("Nov");
            mm.Items.Add("Dec");
            for (i = 2011; i <= 2021; i++)
            {
                yy.Items.Add(i.ToString());
            }
        }
    }
    protected void butupdate_Click(object sender, EventArgs e)
    {
       if(txtNews.Text!="")
        {
         cmd.Connection = con;
        cmd.CommandText = "Insert into Latest_News values('" + (mm.SelectedIndex + 1) + "/" + dd.Text + "/" + yy.Text + "','" + txtNews.Text + "')";
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        txtNews.Text = "";
        }
        else
        {
            lblmsg.Text = "Latest News Updated"; 
        }

    }
}
