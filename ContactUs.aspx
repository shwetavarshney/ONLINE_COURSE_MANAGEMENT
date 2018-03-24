<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="Untitled Page" %>

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
        .style3
        {
            color: #663300;
            font-size: large;
        }
        .style4
        {
            color: #800000;
            font-family: "Arial Black";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border: thin groove #000080; width: 900px;" 
    bgcolor="White">
    <tr>
        <td class="style1" colspan="4" style="text-align: center">
                Contact Us</td>
    </tr>
    <tr>
        <td class="style2" style="width: 200px">
                Registration No</td>
        <td style="width: 200px">
            <asp:TextBox ID="txtRegNo" runat="server" ForeColor="Maroon" 
                    Width="70px"></asp:TextBox>
        </td>
        <td class="style3" colspan="2" style="text-align: center">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 200px">
                Name</td>
        <td style="width: 200px">
            <asp:TextBox ID="txtNm" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
        <td class="style2" style="width: 200px">
                Contact No</td>
        <td class="style4" style="width: 200px">
                08864495993</td>
    </tr>
    <tr>
        <td class="style2">
                Date</td>
        <td>
            <asp:DropDownList ID="dd" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="16px" Width="40px">
            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="mm" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="16px" Width="50px">
            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="yy" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="17px" Width="62px">
            </asp:DropDownList>
        </td>
        <td class="style2">
                Email_Address</td>
        <td class="style4">
                varshney11@gmail.com</td>
    </tr>
    <tr>
        <td class="style2">
                Contact No.</td>
        <td>
            <asp:TextBox ID="txtCNo" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
        <td class="style2">
                Address</td>
        <td class="style4">
                Aligarh(U.P.)</td>
    </tr>
    <tr>
        <td class="style2">
                Email Address</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" ForeColor="Maroon" Width="150px"></asp:TextBox>
        </td>
        <td colspan="2">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
                Remark</td>
        <td>
            <asp:TextBox ID="txtRemark" runat="server" ForeColor="Maroon" 
                    TextMode="MultiLine" Width="185px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="butSubmit" runat="server" onclick="butSubmit_Click" 
                    Text="Submit" />
        </td>
        <td>
            <asp:Button ID="butClear" runat="server" onclick="butClear_Click" 
                    Text="Clear" />
        </td>
    </tr>
</table>
</asp:Content>

