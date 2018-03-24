<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentApp.aspx.cs" Inherits="StudentApp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style44
        {
            color: #800000;
            font-size: xx-large;
            text-decoration: underline;
        }
        .style43
        {
            font-size: large;
            color: #000066;
        }
        
        .style42
        {
            text-align: left;
            font-weight: bold;
            color: #000066;
            width: 215px;
        }
        .style48
        {
            font-size: large;
            color: #800000;
            font-family: "Courier New", Courier, monospace;
        }
        .style49
        {
            color: #666666;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="border: thin groove #000080; width: 800px;" 
    bgcolor="White">
    <tr>
        <td class="style44" style="text-align: center">
                Application Form</td>
    </tr>
    <tr>
        <td>
            <table cellspacing="2" frame="border" style="width:100%;">
                <tr>
                    <td style="width: 200px; " class="style43">
                            Registration No</td>
                    <td style="width: 200px">
                        <asp:Label ID="lblRegNo" runat="server" ForeColor="Maroon"></asp:Label>
                    
                    
                    </td>
                    <td rowspan="6" style="width: 200px" class="style43">
                            Photo</td>
                    <td rowspan="6" style="width: 200px">
                        <asp:Image ID="Image2" runat="server" ImageAlign="Middle" 
                                ImageUrl="~/Image/Photo.JPG" Height="150px" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="style43">
                            Course</td>
                    <td>
                        <asp:Label ID="lblCrs" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style43">
                            Student Name</td>
                    <td>
                        <asp:Label ID="lblSname" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style43">
                            Date of Birth</td>
                    <td>
                        <asp:Label ID="lblDOB" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                            Sex</td>
                    <td>
                        <asp:Label ID="lblSex" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Father&#39;s Name</td>
                    <td>
                        <asp:Label ID="lblFname" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Maritial Status</td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                    <td rowspan="7" class="style43">
                            Signature</td>
                    <td rowspan="7">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Sign.JPG" />
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Contact No</td>
                    <td>
                        <asp:Label ID="lblCNo" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Qualification</td>
                    <td>
                        <asp:Label ID="lblQlf" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Last School Pass &amp; Year</td>
                    <td>
                        <asp:Label ID="lblPY" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Date of Registration</td>
                    <td>
                        <asp:Label ID="lblDOReg" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                Address</td>
                    <td>
                        <asp:Label ID="lblAdd" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                &nbsp;Email</td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style48">
            <span class="style49">Note:</span> Please Send Via Speed Post</form>
</asp:Content>

