<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseMaterial.aspx.cs" Inherits="CourseMaterial" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            color: #000066;
            font-size: large;
        }
        .style4
        {
            width: 200px;
        }
        .style5
        {
            color: #800000;
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="White" style="border: thin groove #000080">
        <tr>
            <td class="style5" align="center" colspan="3">
        Course Material</td>
        </tr>
        <tr>
            <td class="style3" style="width: 200px">
                Teacher Code</td>
            <td class="style4">
                <asp:TextBox ID="txtcode" runat="server" ForeColor="Maroon" Width="150px" 
                        ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style4" rowspan="7">
                <asp:Image ID="Image1" runat="server" Height="200px" 
            ImageUrl="~/Image/Online-Education-Blogs.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Course</td>
            <td class="style4">
                <asp:TextBox ID="txtcrs" runat="server" ForeColor="Maroon" ReadOnly="True" 
                        Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Year/Semester</td>
            <td class="style4">
                <asp:TextBox ID="txtYSem" runat="server" ForeColor="Maroon" ReadOnly="True" 
                        Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Subject</td>
            <td class="style4">
                <asp:TextBox ID="txtSub" runat="server" ForeColor="Maroon" ReadOnly="True" 
                        TextMode="MultiLine" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                File Upload</td>
            <td class="style4">
                <asp:FileUpload ID="FU" runat="server" ForeColor="Maroon" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="butUpload" runat="server" Height="26px" 
                        Text="Upload Material" onclick="butUpload_Click" />
            </td>
            <td class="style4">
                <asp:Button ID="butSubmit0" runat="server" Text="Clear" 
                    Width="55px" style="text-align: center" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

