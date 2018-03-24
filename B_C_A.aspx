<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="B_C_A.aspx.cs" Inherits="B_C_A" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            color: #000066;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="600px" bgcolor="White" 
        style="border: thin groove #000080">
        <tr>
            <td  width="200px" colspan="2" 
                style="text-align: center; font-size: x-large; color: #800000">
                Welcome to B.C.A. Online Course Management</td>
        </tr>
        <tr>
            <td class="style2" width="200px">
                Registraion No</td>
            <td width="400px;">
                <asp:Label ID="lblRegNo" runat="server" BackColor="White" Font-Bold="False" 
                    Font-Size="16pt" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Enrolment No</td>
            <td>
                <asp:Label ID="lblEnrol" runat="server" BackColor="White" Font-Size="16pt" 
                    ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">BCA Link</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

