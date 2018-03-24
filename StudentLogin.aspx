<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            font-size: xx-large;
            color: #800000;
            text-align: center;
        }
        .style2
        {
            font-size: larger;
            color: #000066;
                text-align: left;
        }
        .style3
        {
            width: 167px;
        }
        .style7
        {
            font-size: larger;
            color: #000066;
            text-align: left;
            height: 30px;
        }
        .style4
        {
            font-size: larger;
            color: #000066;
            height: 24px;
        }
        .style5
        {
            height: 24px;
        }
        .auto-style1 {
            font-size: larger;
            color: #000066;
            text-align: right;
            height: 30px;
        }
        .auto-style2 {
            font-size: larger;
            color: #000066;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin groove #000080; width: 400px" align="center" 
    bgcolor="White">
    <tr>
        <td class="style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;Student Login<br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 200px">
                Username</td>
        <td class="style3" style="width: 200px">
                &nbsp;<asp:TextBox ID="txtUser" runat="server" style="text-align: left" 
                    BackColor="White" Font-Bold="True" ForeColor="Maroon" Width="150px"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="auto-style1">
                Password</td>
        <td class="style3">
                &nbsp;<asp:TextBox ID="txtPass" runat="server" style="text-align: left" 
                    TextMode="Password" BackColor="White" Font-Bold="True" ForeColor="Maroon" 
                    Width="150px"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style7" colspan="2">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="butLogin" runat="server" onclick="butLogin_Click" Text="Login" Width="81px" />
        </td>
        <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="butClear" runat="server" Text="Clear" OnClick="butClear_Click" Width="76px" />
        </td>
    </tr>
    <tr>
        <td class="style4" align="center" colspan="2">
    
        <asp:Image ID="Image1" runat="server" Height="200px" 
            ImageUrl="~/Image/Login.jpg" Width="200px" />
    
        </td>
    </tr>
</table>
</asp:Content>

