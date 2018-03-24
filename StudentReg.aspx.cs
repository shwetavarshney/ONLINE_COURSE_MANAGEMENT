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
public partial class StudentReg : System.Web.UI.Page
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
                dd1.Items.Add(i.ToString());
                dd2.Items.Add(i.ToString());
                dd3.Items.Add(i.ToString());
            }

            mm1.Items.Add("Jan");
            mm1.Items.Add("Feb");
            mm1.Items.Add("Mar");
            mm1.Items.Add("April");
            mm1.Items.Add("May");
            mm1.Items.Add("Jun");
            mm1.Items.Add("July");
            mm1.Items.Add("Aug");
            mm1.Items.Add("Sep");
            mm1.Items.Add("Oct");
            mm1.Items.Add("Nov");
            mm1.Items.Add("Dec");
            mm2.Items.Add("Jan");
            mm2.Items.Add("Feb");
            mm2.Items.Add("Mar");
            mm2.Items.Add("April");
            mm2.Items.Add("May");
            mm2.Items.Add("Jun");
            mm2.Items.Add("July");
            mm2.Items.Add("Aug");
            mm2.Items.Add("Sep");
            mm2.Items.Add("Oct");
            mm2.Items.Add("Nov");
            mm2.Items.Add("Dec");
            mm3.Items.Add("Jan");
            mm3.Items.Add("Feb");
            mm3.Items.Add("Mar");
            mm3.Items.Add("April");
            mm3.Items.Add("May");
            mm3.Items.Add("Jun");
            mm3.Items.Add("July");
            mm3.Items.Add("Aug");
            mm3.Items.Add("Sep");
            mm3.Items.Add("Oct");
            mm3.Items.Add("Nov");
            mm3.Items.Add("Dec");

            for (i = 1980; i <= 2020; i++)
            {
                yy1.Items.Add(i.ToString());
                yy2.Items.Add(i.ToString());
                yy3.Items.Add(i.ToString());

            }
        }
    }
    void clear()
    {
        txtFname.Text = "";
        txtCno.Text = "";
        txtQlf.Text = "";
        txtLsp.Text = "";
        txtCD.Text = "";
        txtAmt.Text = "";
        txtAdd.Text = "";
        txtEadd.Text = "";
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        if(txtAdd.Text!="" && txtAmt.Text!="" && txtCD.Text!="" && txtCno.Text!="" && txtEadd.Text!="" && txtFname.Text!="" && txtLsp.Text!="" && txtQlf.Text!="" && txtSname.Text!="")
        {
        string Course_ID = "";

        if (rbBCA.Checked == true)
            Course_ID = "BCS001";
        if (rbBtech.Checked == true)
            Course_ID = "BT002";
        if (rbMCA.Checked == true)
            Course_ID = "MCS003";
        if (rbMtech.Checked == true)
            Course_ID = "MT004";
        String sex = "";
        if (rbMle.Checked == true)
            sex = "Male";
        if (rbFml.Checked == true)
            sex = "Male";
        String Status = "";
        if (rbMd.Checked == true)
            Status = "Married";
        if (rbUm.Checked == true)
            Status = "Unmarried";
        string mode = "";
        if (rbCash.Checked == true)
            mode = "Cash";
        if (rbChk.Checked == true)
            mode = "Check";
        if (rbdd.Checked == true)
            mode = "DD";

        int RegNo;
        cmd.CommandText = "select max (Reg_No) from Student_Registration";
        con.Open();
        if (cmd.ExecuteScalar() == DBNull.Value)
            RegNo = 1456;
        else
            RegNo = Convert.ToInt32(cmd.ExecuteScalar()) + 1;


        int c = 0;
        if (FU.HasFile)
        {
            string s = FU.FileName;
            int i = s.Length;
            string sa = s.Substring((i - 4), 4);
            cmd.CommandText = "select count(Sname) from Student_Registration where Sname='" + txtSname.Text + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();

            if (cmd.ExecuteScalar() == null)
                c = 1;
            else
                c = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            string s1 = txtSname.Text + Convert.ToString(c) + sa;
            FU.SaveAs(Server.MapPath("~/") + "/Students Photo/" + s1);

            cmd.Connection = con;
            cmd.CommandText = "Insert into Student_Registration values(" + RegNo + ",'" + Course_ID + "','" + txtSname.Text + "','" + (mm1.SelectedIndex + 1) + "/" + dd1.Text + "/" + yy1.Text + "','" + sex + "','" + Status + "'," + txtCno.Text + ",'" + txtQlf.Text + "','" + txtLsp.Text + "','" + txtFname.Text + "','" + (mm3.SelectedIndex + 1) + "/" + dd3.Text + "/" + yy3.Text + "','" + txtAdd.Text + "','" + txtEadd.Text + "','" + mode + "','" + txtCD.Text + "'," + txtAmt.Text + ",'" + (mm2.SelectedIndex + 1) + "/" + dd2.Text + "/" + yy2.Text + "','" + s1 + "')";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            clear();
            Response.Redirect("StudentApp.aspx?Snm=" + txtSname.Text);
            txtSname.Text = "";
        }
        }
        else
        {
            lblmsg.Text="Any Field Cannot be Blank!";
        }
    }
    protected void butSubmit0_Click(object sender, EventArgs e)
    {
        clear();
    }
}
