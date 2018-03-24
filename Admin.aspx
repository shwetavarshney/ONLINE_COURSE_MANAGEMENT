<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            color: #800000;
            font-size: x-large;
            text-decoration: underline;
            font-family: Elephant;
        }
        .style2
        {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 600px;" align="center">
        <tr>
            <td class="style1" colspan="3" style="text-align: center">
                Administrator</td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="lnkApp" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Maroon">Approval</asp:LinkButton>
            </td>
            <td class="style2">
                <asp:LinkButton ID="lnkteacher" runat="server" 
                    Font-Bold="True" Font-Italic="True" Font-Size="18pt" ForeColor="Maroon" 
                    PostBackUrl="~/TeacherReg.aspx" onclick="lnkteacher_Click1">Teacher 
                Registration</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Maroon">Latest News</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="lnkLAnnonce0" runat="server" 
                    Font-Bold="True" Font-Italic="True" Font-Size="18pt" ForeColor="Maroon" 
                    PostBackUrl="~/Course  Details.aspx">Course Detail</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

