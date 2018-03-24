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
public partial class TeacherReg : System.Web.UI.Page
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

            for (i = 1965; i <= 2010; i++)
            {
                yy1.Items.Add(i.ToString());
                yy2.Items.Add(i.ToString());
            }
        }
        
    }
    void clear()
    {
        txtCode.Text = "";
        txtNm.Text = "";
        txtFname.Text = "";
        txtCno.Text = "";
        txtSal.Text = "";
        txtUser.Text = "";
        txtQlf.Text = "";
        txtLablty.Text = "";
        txtNlt.Text = "";
        txtExp.Text = "";
        txtAdd.Text = "";
        txtEmail.Text = "";
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        string Course_ID = "";

        if (drdcrs.SelectedIndex == 0)
            Course_ID = "BCS001";
        if (drdcrs.SelectedIndex == 1)
            Course_ID = "BT002";
        if (drdcrs.SelectedIndex == 2)
            Course_ID = "MCS003";
        if (drdcrs.SelectedIndex == 3)
            Course_ID = "MT004";

        string sex = "";

        if (rbMle.Checked == true)
            sex = "Male";
        if (rbFml.Checked == true)
            sex = "Female";
        string status = "";
        if (rbMd.Checked == true)
            status = "Married";
        if (rbUm.Checked == true)
            status = "Unmarried";

        cmd.Connection = con;
        cmd.CommandText = "Insert into Teacher_Registration values('" + txtCode.Text + "','" + txtNm.Text + "','" + (mm1.SelectedIndex + 1) + "/" + dd1.Text + "/" + yy1.Text + "','" + txtFname.Text + "','" + sex + "','" + status + "','" + txtCno.Text + "','" + txtQlf.Text + "','" + txtNlt.Text + "','" + txtLablty.Text + "','" + txtEmail.Text + "','" + txtAdd.Text + "','" + Course_ID + "','" + drdYs.SelectedItem.Text + "','" + drdSub.SelectedItem.Text + "','" + (mm2.SelectedIndex + 1) + "/" + dd2.Text + "/" + yy2.Text + "','" + txtExp.Text + "'," + txtSal.Text + ",'" + txtUser.Text + "','" + txtPass.Text + "','" + txtRpass.Text + "')";
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        string from = "amahfooz11@gmail.com";
        //Replace this with Your own corrent Gmail_Address
        string to = txtEmail.Text;//Replace this with the Email Address to whom you want to sent the mail

        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

        //  mail.To.Add(to);
        mail.From = new MailAddress(from, "Mahfooz Online Course Management", System.Text.Encoding.UTF8);
        mail.Subject = "Registration Detail";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "Dear Teacher, You are successfully registred with Mahfooz Online Course Management. Your User Id is " + txtUser.Text + " and Password is " + txtPass.Text + "";
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
        lblmsg.Text = "Teacher Registration successfully";
        con.Close();
        clear();
    }
    protected void drdcrs_SelectedIndexChanged(object sender, EventArgs e)
    {
        drdYs.Items.Clear();
        if (drdcrs.SelectedIndex == 0)
        {
            drdYs.Items.Add("Ist Semester");
            drdYs.Items.Add("IInd Semester");
            drdYs.Items.Add("IIIrd Semester");
            drdYs.Items.Add("IVth Semester");
            drdYs.Items.Add("Vth Semester");
            drdYs.Items.Add("VIth Semester");
        }
        if (drdcrs.SelectedIndex == 1)
        {
            drdYs.Items.Add("Ist Semester");
            drdYs.Items.Add("IInd Semester");
            drdYs.Items.Add("IIIrd Semester");
            drdYs.Items.Add("IVth Semester");
            drdYs.Items.Add("Vth Semester");
            drdYs.Items.Add("VIth Semester");
            drdYs.Items.Add("VIIth Semester");
            drdYs.Items.Add("VIIIth Semester");
        }
        if (drdcrs.SelectedIndex == 2)
        {
            drdYs.Items.Add("Ist Semester");
            drdYs.Items.Add("IInd Semester");
            drdYs.Items.Add("IIIrd Semester");
            drdYs.Items.Add("IVth Semester");
            drdYs.Items.Add("Vth Semester");
            drdYs.Items.Add("VIth Semester");
        }

        if (drdcrs.SelectedIndex == 3)
        {
            drdYs.Items.Add("Ist Semester");
            drdYs.Items.Add("IInd Semester");
            drdYs.Items.Add("IIIrd Semester");
            drdYs.Items.Add("IVth Semester");
        }

    }
    protected void drdYs_SelectedIndexChanged(object sender, EventArgs e)
    {
        drdSub.Items.Clear();
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 0)
        {
            drdSub.Items.Add("Fundamental Computer");
            drdSub.Items.Add("Communication Skills");
            drdSub.Items.Add("FHS");
        }
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 1)
        {
            drdSub.Items.Add("Computer in Mathematics");
            drdSub.Items.Add("C & Data Structure");
            drdSub.Items.Add("Problem Solving And Technique");
        }
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 2)
        {
            drdSub.Items.Add("System Software");
            drdSub.Items.Add("System Analysis and Design");
            drdSub.Items.Add("FST");
        }
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 3)
        {
            drdSub.Items.Add("Computer Organisation");
            drdSub.Items.Add("Multimedia");
            drdSub.Items.Add("D.B.M.S.");
            drdSub.Items.Add("R.D.B.S.");
            drdSub.Items.Add("Window Programming");
        }
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 4)
        {
            drdSub.Items.Add("Computer Network");
            drdSub.Items.Add("TCP/IP");
            drdSub.Items.Add("Softaware Engineering");
            drdSub.Items.Add("Numeraical Analysis");
        }
        if (drdcrs.SelectedIndex == 0 && drdYs.SelectedIndex == 5)
        {
            drdSub.Items.Add("OOPs & C++");
            drdSub.Items.Add("Intranet");
            drdSub.Items.Add("Theory Of Computer Science");
            drdSub.Items.Add("Internet Progamming");
            drdSub.Items.Add("Project");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 0)
        {
            drdSub.Items.Add("Fundametal Computer");
            drdSub.Items.Add("Data Structure");
            drdSub.Items.Add("Operating System");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 1)
        {
            drdSub.Items.Add("C & Data Structure");
            drdSub.Items.Add("Asembly Language");
            drdSub.Items.Add("Communicatin Skill");
            drdSub.Items.Add("SAD");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 2)
        {
            drdSub.Items.Add("C++");
            drdSub.Items.Add("Networking");
            drdSub.Items.Add("Visual Basic");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 3)
        {
            drdSub.Items.Add("TCP/IP");
            drdSub.Items.Add("D.B.M.S");
            drdSub.Items.Add("Digital Computer");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 4)
        {
            drdSub.Items.Add("Numerical Analysis");
            drdSub.Items.Add("SE");
            drdSub.Items.Add("OOPS");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 5)
        {
            drdSub.Items.Add("Discreate Maths");
            drdSub.Items.Add("Internetworking");
            drdSub.Items.Add("Automata");
            drdSub.Items.Add("Java");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 6)
        {
            drdSub.Items.Add("DAA");
            drdSub.Items.Add("Com Organization");
            drdSub.Items.Add("Garphics");
            drdSub.Items.Add("JSP");
        }
        if (drdcrs.SelectedIndex == 1 && drdYs.SelectedIndex == 7)
        {
            drdSub.Items.Add("Parallel Computing");
            drdSub.Items.Add("A.I");
            drdSub.Items.Add("Project");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 0)
        {
            drdSub.Items.Add("Problem Solving and Programming");
            drdSub.Items.Add("Computer Organization and Assembly language Programming ");
            drdSub.Items.Add("Discrete Mathematics");
            drdSub.Items.Add("Systems Analysis and Design");
            drdSub.Items.Add("Communication Skills");
            drdSub.Items.Add("Internet Concepts and Web Design");
            drdSub.Items.Add("C and Assembly Language Programming Lab");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 1)
        {
            drdSub.Items.Add("Data and File Structures");
            drdSub.Items.Add("Operating System Concepts and Networking Management");
            drdSub.Items.Add("Introduction to Database Management Systems");
            drdSub.Items.Add("Object Oriented Technologies and Java Programming");
            drdSub.Items.Add("Lab (based on DS,OS,DBMS & JAVA)");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 2)
        {
            drdSub.Items.Add("Design and Analysis of Algorithms");
            drdSub.Items.Add("Object Oriented Analysis and Design");
            drdSub.Items.Add("Advanced Discrete Mathematics");
            drdSub.Items.Add("Software Engineering");
            drdSub.Items.Add("Accountancy and Financial Management");
            drdSub.Items.Add("Labortary Course(OOAD,S.E & Accountancy)");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 3)
        {
            drdSub.Items.Add("Operating System");
            drdSub.Items.Add("Data Communication and Computer Networks");
            drdSub.Items.Add("Advanced D.B.M.S");
            drdSub.Items.Add("Mini Project");
            drdSub.Items.Add("Labortary Course (Unix & DBMS)");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 4)
        {
            drdSub.Items.Add("Advanced Internet Technologies");
            drdSub.Items.Add("Principles of Management and Information Sytems");
            drdSub.Items.Add("Coputer Graphics & Multimedia");
            drdSub.Items.Add("Labortary Course (JSP & Graphics)");
            drdSub.Items.Add("Artificial Intelligent");
            drdSub.Items.Add("Parallel Computer");
            drdSub.Items.Add("Numerical & Staticals Tecnique");
        }
        if (drdcrs.SelectedIndex == 2 && drdYs.SelectedIndex == 5)
        {
            drdSub.Items.Add("Project");
        }
        if (drdcrs.SelectedIndex == 3 && drdYs.SelectedIndex == 0)
        {
            drdSub.Items.Add("Data Structures and Algorithm");
            drdSub.Items.Add(" Computer Network");
            drdSub.Items.Add("Theory of Computer Science");
            drdSub.Items.Add("Graph theory");
            drdSub.Items.Add("Topics in Mathematical Science");
            drdSub.Items.Add("Service Oriented Architecture ");
            drdSub.Items.Add("OOPS");
            drdSub.Items.Add("Graphics");
        }
        if (drdcrs.SelectedIndex == 3 && drdYs.SelectedIndex == 1)
        {
            drdSub.Items.Add("Data Ware Housing");
            drdSub.Items.Add("Data Mining");
            drdSub.Items.Add("Advanced s/w Engineering");
            drdSub.Items.Add("Mobile Computing");
            drdSub.Items.Add("Machine Learning");
            drdSub.Items.Add("Pattern Recognition");
            drdSub.Items.Add("Parallel and Distributed Computing");
        }
        if (drdcrs.SelectedIndex == 3 && drdYs.SelectedIndex == 2)
        {
            drdSub.Items.Add("Mini Project");
        }
        if (drdcrs.SelectedIndex == 3 && drdYs.SelectedIndex == 3)
        {
            drdSub.Items.Add("Project");
        }
    }
    protected void butSubmit0_Click(object sender, EventArgs e)
    {
        clear();
    }
}
