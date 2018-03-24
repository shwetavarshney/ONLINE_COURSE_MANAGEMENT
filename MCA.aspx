<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MCA.aspx.cs" Inherits="MCA" Title="Untitled Page"%>

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
                Welcome to M.C.A. Online Course Management</td>
        </tr>
        <tr>
            <td class="style2" width="200px">
                Registraion No</td>
            <td width="400px;">
                <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="False" 
                    Font-Size="16pt" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Enrolment No</td>
            <td>
                <asp:Label ID="Label2" runat="server" BackColor="White" Font-Size="16pt" 
                    ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/MCALink.aspx" Text="MCALINK" />
            </td>
        </tr>
    </table>
</asp:Content>

