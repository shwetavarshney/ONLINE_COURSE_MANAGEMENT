<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MCALink.aspx.cs" Inherits="MCALink" %>

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
    <table align="center" bgcolor="White" 
        style="border-style: hidden; border-color: inherit; border-width: medium; width: 537px;">
        <tr>
            <td  width="100px" colspan="2" 
                style="text-align: center; font-size: x-large; color: #800000">
                <br />
                <br />
                &nbsp;<asp:Button ID="Button1" runat="server" Text="CLICK HERE For Database Books" OnClick="Button1_Click" style="text-align: center" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Click Here For Java Books" Width="193px" />
                <br />
            </td>
           </tr>
         </table> 



</asp:Content>

