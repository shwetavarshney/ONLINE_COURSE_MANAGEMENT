<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            font-size: medium;
        }
        .style4
        {
            font-size: medium;
            text-align: justify;
            width: 472px;
        }
        .style5
        {
            color: #000066;
            font-weight: bold;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border: thin groove #000080; width: 1000px;" 
        bgcolor="White">
        <tr>
            <td colspan="3" class="style5">
                <marquee>Welcome To Online Course</marquee></td>
        </tr>
        <tr>
            <td  color: #800000;" class="style4" style="padding: 10px; margin: 10px">
                </span>One way to increase interaction with and among students is to augment 
                    face-to-face lectures with more engaging activities such as self-paced 
                    tutorials, discussion forums, and live chats. Online@UT makes it easy to 
                    organize and post these materials online for students to access anytime from 
                    anywhere via the Web. In this introduction to Online@UT&#39;s course management 
                    system, participants will access their online course site, receive an overview 
                    of instructor development tools and resources, and learn to upload a variety of 
                    document types.Use of the online forms that give you access to your course sites 
                requires CMS certification, which can be acquired by taking our Course 
                Management System (CMS) 110 workshop in either a face-to-face or online version. 
                If you are an experienced Blackboard user, but are new to UT or Online@UT for 
                instructional use, please contact the Helpdesk at (865) 974-9900 (during the 
                work day) or complete the form at http://online.utk.edu/contact (after hours) so 
                we can fast track your access to the system.</td>
            <td align="top" style="width: 400px;" class="style3">
                <br />
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
            <td align="center" style="width: 200px;" class="style3">
                <asp:Image ID="Image1" runat="server" Height="300px" 
                    ImageUrl="~/Image/Online Education.jpg" Width="350px" />
            </td>
        </tr>
    </table>
</asp:Content>

