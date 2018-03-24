<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherLogin.aspx.cs" Inherits="TeacherLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            font-size: xx-large;
            text-decoration: underline;
        }
        .style2
        {
            color: #000066;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border: thin groove #000080; width: 400px;" 
    bgcolor="White">
    <tr>
        <td class="style1" colspan="2" style="text-align: center; color: #800000">
                Teacher Login</td>
    </tr>
    <tr>
        <td class="style2" style="width: 200px">
                Username</td>
        <td style="width: 200px">
            <asp:TextBox ID="txtUser" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
                Password</td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" ForeColor="Maroon" TextMode="Password" 
                    Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="butLogin" runat="server" onclick="butLogin_Click" Text="Login" 
                    Width="50px" />
        </td>
        <td>
            <asp:Button ID="butClear" runat="server" onclick="butClear_Click" Text="Clear" 
                    Width="50px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblerr" runat="server" ForeColor="Maroon"></asp:Label>
        </td>
        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
</table>
</asp:Content>

