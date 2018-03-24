<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course  Details.aspx.cs" Inherits="Course__Details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            color: #800000;
            text-decoration: underline;
            font-size: xx-large;
        }
        .style2
        {
            color: #000066;
            font-size: large;
        }
        .style5
        {
            color: #000066;
            font-size: large;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border: thin groove #000080; width: 500px;" 
        bgcolor="White">
        <tr>
            <td class="style1" colspan="2" style="text-align: center">
                Course Details</td>
        </tr>
        <tr>
            <td class="style2" style="width: 200px">
                &nbsp;</td>
            <td style="width: 200px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="width: 200px">
                Course ID</td>
            <td style="width: 200px">
                <asp:TextBox ID="txtId" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Course Name</td>
            <td>
                <asp:TextBox ID="txtCNm" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="butSubmit" runat="server" onclick="butSubmit_Click" 
                    Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

