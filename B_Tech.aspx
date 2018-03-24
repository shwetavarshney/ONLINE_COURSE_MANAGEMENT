<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="B_Tech.aspx.cs" Inherits="B_Tech" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            font-size: large;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="600px;">
        <tr>
            <td colspan="2" style="text-align: center; color: #800000; font-size: x-large">
                   Welcome toB.Tech Online Course Management</td>
        </tr>
        <tr>
            <td class="style1">
                   Registration No</td>
            <td width="400px;">
                <asp:Label ID="lblRegNo" runat="server" BackColor="White" Font-Size="16pt" 
                       ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">B.Tech</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

