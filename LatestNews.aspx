<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LatestNews.aspx.cs" Inherits="LatestNews" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            color: #800000;
            font-size: x-large;
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
    <table style="border: thin groove #000080; width:600px;" align="center" 
    bgcolor="White">
    <tr>
        <td class="style1" colspan="2" style="text-align: center">
                Latest Announcement</td>
    </tr>
    <tr>
        <td class="style2" style="width: 200px">
                Date</td>
        <td style="width: 400px">
            <asp:DropDownList ID="dd" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="16px" Width="40px">
            </asp:DropDownList>
            <asp:DropDownList ID="mm" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="16px" Width="50px">
            </asp:DropDownList>
            <asp:DropDownList ID="yy" runat="server" AutoPostBack="True" ForeColor="Maroon" 
                    Height="16px" Width="62px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
                Latest News</td>
        <td>
            <asp:TextBox ID="txtNews" runat="server" ForeColor="Maroon" 
                    TextMode="MultiLine" Height="102px" Width="329px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="butupdate" runat="server" Text="Update" 
                    onclick="butupdate_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="News_Date" HeaderText="News_Date" 
                            SortExpression="News_Date" />
                    <asp:BoundField DataField="News" HeaderText="News" SortExpression="News" />
                </Columns>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OCM %>" 
                SelectCommand="SELECT * FROM [Latest_News]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

