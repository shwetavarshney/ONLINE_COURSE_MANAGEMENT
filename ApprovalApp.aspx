<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ApprovalApp.aspx.cs" Inherits="ApprovalApp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style38
        {
            width: 960px;
        }
        .style51
        {
            text-align: left;
            width: 102px;
        }
        .style128
        {
            color: #800000;
            font-size: large;
        }
        .style117
        {
            text-align: left;
            font-weight: bold;
            color: #000066;
            }
        .style118
        {
            width: 179px;
        }
        .style129
    {
        text-align: left;
        color: #000066;
    }
    .style130
    {
        width: 179px;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin groove #000080; width: 1200px; " 
        class="style38" align="center" bgcolor="White">
    <tr>
        <td class="style51" rowspan="12" valign="top">
            <span class="style128">Requests</span><br />
            <asp:ListBox ID="lstReq" runat="server" Height="410px" Width="160px" 
                    AutoPostBack="True" onselectedindexchanged="lstReq_SelectedIndexChanged" 
                    ForeColor="Maroon"></asp:ListBox>
        </td>
        <td class="style129" style="width: 200px">
                Registration No</td>
        <td class="style118" style="width: 200px">
            <asp:TextBox ID="txtRegNo" runat="server" ForeColor="Maroon" ReadOnly="True" 
                    Width="70px"></asp:TextBox>
        </td>
        <td class="style129" colspan="1" style="width: 200px">
                Father&#39;s Name             
        </td>
        <td class="style118" style="width: 200px">
            <asp:TextBox ID="txtFname" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Course_ID</td>
        <td class="style130">
            <asp:TextBox ID="txtCrs" runat="server" Width="150px" 
                    style="text-align: left" ForeColor="Maroon" ReadOnly="True"></asp:TextBox>
        </td>
        <td class="style129" colspan="1">
                            Date of Registraion</td>
        <td class="style118">
            <asp:DropDownList ID="dd3" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm3" runat="server" Width="50px" 
                    Height="16px" AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy3" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Student&#39;s Name</td>
        <td class="style118">
            <asp:TextBox ID="txtSname" runat="server" Width="150px" 
                    style="text-align: left" ForeColor="Maroon" ReadOnly="True"></asp:TextBox>
        </td>
        <td class="style129" colspan="1">
                Mode Payment</td>
        <td class="style118">
            <asp:RadioButton ID="rbCash" runat="server" Text="Cash" ForeColor="Maroon" 
                    Enabled="False" EnableTheming="True" />
            <asp:RadioButton ID="rbChk" runat="server" Text="Check" ForeColor="Maroon" 
                    Enabled="False" />
            <asp:RadioButton ID="rbdd" runat="server" Text="DD" ForeColor="Maroon" 
                    Enabled="False" />
        </td>
    </tr>
    <tr>
        <td class="style129">
                Date of Birth</td>
        <td class="style118">
            <asp:DropDownList ID="dd1" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm1" runat="server" Width="50px" Height="18px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy1" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
        </td>
        <td style="color: #000066" colspan="1" class="style129">
                Cheque/DD No.</td>
        <td class="style118">
            <asp:TextBox ID="txtCD" runat="server" 
                    Width="150px" ForeColor="Maroon" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Sex</td>
        <td class="style118">
            <asp:RadioButton ID="rbMle" runat="server" GroupName="sex" Text="Male" 
                    ForeColor="Maroon" Enabled="False" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbFml" runat="server" GroupName="sex" 
                    Text="Female" ForeColor="Maroon" Enabled="False" />
        </td>
        <td class="style129" colspan="1">
                Amount</td>
        <td class="style118">
            <asp:TextBox ID="txtAmt" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Maritial Status</td>
        <td class="style118">
            <asp:RadioButton ID="rbMd" runat="server" GroupName="Mstatus" 
                    Text="Married" ForeColor="Maroon" Enabled="False" />
            <asp:RadioButton ID="rbUm" runat="server" GroupName="Mstatus" 
                    Text="Unmarried" ForeColor="Maroon" Enabled="False" />
        </td>
        <td class="style129" colspan="1">
                                Check/ DD Date</td>
        <td style="text-align: left" class="style118" width="0">
            <asp:DropDownList ID="dd2" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm2" runat="server" Width="50px" Height="18px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy2" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon" Enabled="False">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Contact No.</td>
        <td class="style118">
            <asp:TextBox ID="txtCno" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
        <td class="style129" colspan="1">
                Address</td>
        <td style="text-align: left" class="style118">
            <asp:TextBox ID="txtAdd" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129" rowspan>
                Qualification</td>
        <td class="style118" rowspan>
            <asp:TextBox ID="txtQlf" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
        <td class="style129" colspan="1">
                Enrolment No</td>
        <td class="style118">
            <asp:TextBox ID="txtEnrol" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Last School Pass &amp; Year</td>
        <td class="style118">
            <asp:TextBox ID="txtLsp" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
        <td class="style129">
                User Name</td>
        <td class="style118">
            <asp:TextBox ID="txtUser" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style129">
                Email_Address</td>
        <td class="style118">
            <asp:TextBox ID="txtEmail" runat="server" Width="150px" ForeColor="Maroon" 
                    ReadOnly="True"></asp:TextBox>
        </td>
        <td style="text-align: left" class="style129">
                Password</td>
        <td style="text-align: left" class="style118">
            <asp:TextBox ID="txtPass" runat="server" Width="150px" 
                    TextMode="Password" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style117">
            <asp:Button ID="butAcc" runat="server" onclick="butAcc_Click" 
                    Text="Accept Request" />
        </td>
        <td class="style118">
            <asp:Button ID="butClear" runat="server" Text="Clear" 
                    Width="50px" />
        </td>
        <td style="text-align: left" class="style117">
            &nbsp;</td>
        <td style="text-align: left" class="style118">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style117" colspan="4" style="position: fixed;">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

