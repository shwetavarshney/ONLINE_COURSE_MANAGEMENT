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
using System.Net.Mail;
public partial class ApprovalApp : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd = new SqlCommand();
        cmd.Connection = con;

        if (IsPostBack == false)
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

            SqlDataReader dr;

            cmd.CommandText = "Select Sname from Student_Registration";
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
                lstReq.Items.Add(dr.GetValue(0).ToString());
            dr.Close();
            con.Close();
        }
    }
    void clear()
    {
        txtRegNo.Text = "";
        txtCrs.Text = "";
        txtSname.Text = "";
        txtFname.Text = "";
        txtCno.Text = "";
        txtQlf.Text = "";
        txtLsp.Text = "";
        txtCD.Text = "";
        txtAmt.Text = "";
        txtAdd.Text = "";
        txtEmail.Text = "";
        txtEnrol.Text = "";
        txtUser.Text = "";
        txtPass.Text = "";
    }
    protected void butAcc_Click(object sender, EventArgs e)
    {
        if (txtEnrol.Text != "" && txtUser.Text != "" && txtPass.Text != "")
        {
            string Course_ID = "";

            if (txtCrs.Text == "B.C.A.")
                Course_ID = "BCS001";
            if (txtCrs.Text == "B.Tech")
                Course_ID = "BT002";
            if (txtCrs.Text == "M.C.A.")
                Course_ID = "MCS003";
            if (txtCrs.Text == "M.Tech")
                Course_ID = "MT004";

            cmd.CommandText = "Insert into Approval_Data values(" + txtRegNo.Text + ",'" + Course_ID + "','" + txtEnrol.Text + "','" + txtUser.Text + "','" + txtPass.Text + "')";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            string from = "amahfooz11@gmail.com";
            //Replace this with Your own corrent Gmail_Address
            string to = txtEmail.Text;//Replace this with the Email Address to whom you want to sent the mail

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

            // mail.To.Add(to);
            mail.From = new MailAddress(from, "Mahfooz Online Course Management", System.Text.Encoding.UTF8);
            mail.Subject = "Registration Detail";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Dear Student, You are successfully registred with Mahfooz Online Course Management. Your User Id is " + txtUser.Text + " and Password is " + txtPass.Text + "";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();
            //Add the creddentials use your own email id and passward
            client.Credentials = new System.Net.NetworkCredential(from, "ghjdh");
            client.Port = 587;//gmail works on this Port
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;//Gmail works on server secured layer
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Exception ex1 = ex;
                string errorMessage = string.Empty;
                while (ex1 != null)
                {
                    errorMessage += ex1.ToString();
                    ex1 = ex1.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
            }//end try

            Response.Write("Send Mail");

            clear();
            lblmsg.Text = "Enrolment No & UserName has been send";
        }
        else
        {
            lblmsg.Text = "Any Filed Cannot be Blank!";
        }

    }
    protected void lstReq_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection();
        cmd = new SqlCommand();
        SqlDataReader dr;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OCM"].ConnectionString);
        cmd.Connection = con;
        cmd.CommandText = "Select* from Student_Registration where Sname='" + lstReq.SelectedItem.Text + "'";
        if (con.State == ConnectionState.Closed)
            con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtRegNo.Text = dr.GetValue(0).ToString();
            string str;
            str = dr.GetValue(1).ToString();
            if (str.Equals("BCS001"))
            {
                txtCrs.Text = "B.C.A.";
            }
            if (str.Equals("BT002"))
            {
                txtCrs.Text = "B.Tech";
            }
            if (str.Equals("MCS003"))
            {
                txtCrs.Text = "M.C.A.";
            }
            if (str.Equals("MT004"))
            {
                txtCrs.Text = "M.Tech";
            }
            txtSname.Text = dr.GetValue(2).ToString();
            DateTime dt;
            dt = dr.GetDateTime(3);
            dd1.Text = dt.Day.ToString();
            mm1.SelectedIndex = dt.Month - 1;
            yy1.Text = dt.Year.ToString();

            string sex;
            sex = dr.GetValue(4).ToString();
            if (sex.Equals("Male"))
                rbMle.Checked = true;
            if (sex.Equals("Female"))
                rbFml.Checked = true;
            string status;
            status = dr.GetValue(5).ToString();
            if (status.Equals("Married"))
                rbMd.Checked = true;
            if (status.Equals("Unmarried"))
                rbUm.Checked = true;
            txtCno.Text = dr.GetValue(6).ToString();
            txtQlf.Text = dr.GetValue(7).ToString();
            txtLsp.Text = dr.GetValue(8).ToString();
            txtFname.Text = dr.GetValue(9).ToString();
            DateTime dt1;
            dt1 = dr.GetDateTime(10);
            dd3.Text = dt1.Day.ToString();
            mm3.SelectedIndex = dt1.Month - 1;
            yy3.Text = dt1.Year.ToString();


            txtAdd.Text = dr.GetValue(11).ToString();
            txtEmail.Text = dr.GetValue(12).ToString();
            string mode;
            mode = dr.GetValue(13).ToString();
            if (mode.Equals("Cash"))
                rbCash.Checked = true;
            if (mode.Equals("Check"))
                rbChk.Checked = true;
            if (mode.Equals("DD"))
                rbdd.Checked = true;

            txtCD.Text = dr.GetValue(14).ToString();
            txtAmt.Text = dr.GetValue(15).ToString();
            DateTime dt2;
            dt2 = dr.GetDateTime(16);
            dd2.Text = dt2.Day.ToString();
            mm2.SelectedIndex = dt2.Month - 1;
            yy2.Text = dt2.Year.ToString();
        }

        dr.Close();
        con.Close();
    }
}
