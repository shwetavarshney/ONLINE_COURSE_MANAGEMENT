<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="M_Tech.aspx.cs" Inherits="M_Tech" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            color: #800000;
            font-size: x-large;
        }
        .style4
        {
            color: #000066;
            font-size: large;
        }
        .style3
        {
            height: 24px;
            color: #000066;
            font-size: large;
        }
        .style1
        {
            height: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="400px;">
        <tr>
            <td width="200px;" class="style2" colspan="2" style="text-align: center">
                Welcome to M.Tech Online Course Management</td>
        </tr>
        <tr>
            <td width="200px;" class="style4">
                Registration No</td>
            <td width="200px;">
                <asp:Label ID="lblRegNo" runat="server" BackColor="White" Font-Size="16pt" 
                    ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" style="" width="200px">
                Enrolment No</td>
            <td class="style1">
                <asp:Label ID="lblEnrol" runat="server" BackColor="White" Font-Size="16pt" 
                    ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td width="200px">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">M_Tech Link</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

