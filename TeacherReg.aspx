<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherReg.aspx.cs" Inherits="TeacherReg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style47
        {
            text-align: left;
            color: #000066;
            font-size: large;
        }
        .style48
        {
            text-align: left;
            width: 178px;
        }
        .style44
        {
            color: #000066;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin groove #000080; background-image: none; position: static; height: 344px;" 
        align="center" bgcolor="White">
    <tr>
        <td class="style47" colspan="4">
    
        <marquee style="color: #800000; font-size: xx-large">Teacher Registration</marquee></td>
    </tr>
    <tr>
        <td class="style47" style="width: 200px">
                Teacher Code</td>
        <td class="style48" style="width: 200px">
            <asp:TextBox ID="txtCode" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
        <td class="style47" style="width: 200px">
                E_mail</td>
        <td class="style48" style="width: 200px">
            <asp:TextBox ID="txtEmail" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47" style="width: 200px">
            <span class="style44">Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </td>
        <td class="style48" style="width: 200px">
            <asp:TextBox ID="txtNm" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
        <td class="style47" style="width: 200px">
                Address</td>
        <td class="style48" style="width: 200px">
            <asp:TextBox ID="txtAdd" runat="server" Width="150px" TextMode="MultiLine" 
                    ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Date of Birth</td>
        <td class="style48">
            <asp:DropDownList ID="dd1" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm1" runat="server" Width="48px" Height="18px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy1" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
        </td>
        <td class="style47">
                Course</td>
        <td class="style48">
            <asp:DropDownList ID="drdcrs" runat="server" Width="74px" AutoPostBack="True" 
                    onselectedindexchanged="drdcrs_SelectedIndexChanged" ForeColor="Maroon">
                <asp:ListItem>B.C.A</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>M.C.A</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style47" style="width: 200px">
                Father&#39;s Name</td>
        <td class="style48">
            <asp:TextBox ID="txtFname" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style47">
                Year/Semester</td>
        <td class="style48">
            <asp:DropDownList ID="drdYs" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drdYs_SelectedIndexChanged" ForeColor="Maroon" Width="128px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Sex</td>
        <td class="style48">
            <asp:RadioButton ID="rbMle" runat="server" GroupName="sex" Text="Male" 
                    ForeColor="Maroon" />
            <asp:RadioButton ID="rbFml" runat="server" GroupName="sex" 
                    Text="Female" ForeColor="Maroon" />
        </td>
        <td class="style47">
                Subject</td>
        <td class="style48" style="width: 200px">
            <asp:DropDownList ID="drdSub" runat="server" AutoPostBack="True" 
                    ForeColor="Maroon" Width="130px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Marital Status</td>
        <td class="style48">
            <asp:RadioButton ID="rbMd" runat="server" GroupName="Mstatus" 
                    Text="Married" ForeColor="Maroon" />
            <asp:RadioButton ID="rbUm" runat="server" GroupName="Mstatus" 
                    Text="Unmarried" ForeColor="Maroon" />
        </td>
        <td class="style47">
                Joining Date</td>
        <td class="style48">
            <asp:DropDownList ID="dd2" runat="server" Width="37px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm2" runat="server" Width="50px" Height="18px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy2" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Contact No.</td>
        <td class="style48">
            <asp:TextBox ID="txtCno" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style47">
                Experinces</td>
        <td class="style48">
            <asp:TextBox ID="txtExp" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Qualification</td>
        <td class="style48">
            <asp:TextBox ID="txtQlf" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style47">
                Salary</td>
        <td class="style48">
            <asp:TextBox ID="txtSal" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Nationality</td>
        <td class="style48">
            <asp:TextBox ID="txtNlt" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style47">
                Username</td>
        <td class="style48">
            <asp:TextBox ID="txtUser" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47">
                Linguistic Ability</td>
        <td class="style48">
            <asp:TextBox ID="txtLablty" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style47">
                Password</td>
        <td class="style48">
            <asp:TextBox ID="txtPass" runat="server" Width="150px" TextMode="Password" 
                    ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNm" ErrorMessage="Name must be fill"></asp:RequiredFieldValidator>
        </td>
        <td class="style48">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtCno" ErrorMessage="Please must be Number" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </td>
        <td class="style47">
                ReEnter Password</td>
        <td class="style48">
            <asp:TextBox ID="txtRpass" runat="server" Width="150px" TextMode="Password" 
                    ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style47" colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Error: Invalid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        <td class="style47">
            <asp:Button ID="butSubmit" runat="server" Text="Submit" 
                    Width="55px" onclick="butSubmit_Click" style="text-align: center" />
        </td>
        <td class="style47">
            <asp:Button ID="butSubmit0" runat="server" Text="Clear" 
                    Width="55px" onclick="butSubmit0_Click" style="text-align: center" />
        </td>
    </tr>
    <tr>
        <td class="style47" colspan="4">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

