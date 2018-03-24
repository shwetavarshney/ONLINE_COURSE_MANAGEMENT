<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentReg.aspx.cs" Inherits="StudentReg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            text-align: left;
            height: 3px;
        }
        .style51
        {
            text-align: left;
            color: #000066;
        }
        .style54
        {
            font-size: large;
            color: #000066;
        }
        .style55
        {
            text-align: center;
            color: #000066;
            height: 44px;
        }
        .style58
        {
            color: #800000;
        }
        .style42
        {
            text-align: left;
            font-weight: bold;
            color: #000066;
            }
        .style43
        {
            width: 220px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table 
        class="style10" dir="ltr" align="center" 
        style="border: thin groove #000080; width: 1000px" bgcolor="White">
    <tr>
        <td class="style51" colspan="4">
   <marquee style="font-size: xx-large; font-weight: 700; color: #800000;">     Student Registration </marquee></td>
    </tr>
    <tr>
        <td class="style51" colspan="4">
            <span class="style54">Courese</span> &nbsp;<asp:RadioButton ID="rbBCA" 
                    runat="server" Text="BCA" 
                    GroupName="Course" ForeColor="Maroon" />
                &nbsp;&nbsp;
                <asp:RadioButton ID="rbBtech" runat="server" Text="B.Tech" 
                    GroupName="Course" TabIndex="1" ForeColor="Maroon" />
                &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:RadioButton ID="rbMCA" runat="server" Text="MCA" 
                    GroupName="Course" TabIndex="3" ForeColor="Maroon" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbMtech" runat="server" Text="M.Tech" 
                    GroupName="Course" ForeColor="Maroon" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style42" style="width: 250px">
                Student&#39;s Name</td>
        <td class="style43" style="width: 250px">
            <asp:TextBox ID="txtSname" runat="server" Width="150px" 
                    style="text-align: left" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style42" style="width: 250px">
                Father&#39;s Name             
        </td>
        <td class="style43">
            <asp:TextBox ID="txtFname" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style42">
                Date of Birth</td>
        <td class="style43">
            <asp:DropDownList ID="dd1" runat="server" Width="41px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm1" runat="server" Width="50px" Height="18px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy1" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
        </td>
        <td class="style42">
                            Date of Registraion</td>
        <td class="style43">
            <asp:DropDownList ID="dd3" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm3" runat="server" Width="49px" 
                    Height="16px" AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy3" runat="server" Width="62px" ForeColor="Maroon">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style42">
                Sex</td>
        <td class="style43">
            <asp:RadioButton ID="rbMle" runat="server" GroupName="sex" Text="Male" 
                    ForeColor="Maroon" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbFml" runat="server" GroupName="sex" 
                    Text="Female" ForeColor="Maroon" />
        </td>
        <td class="style42">
                Mode Payment</td>
        <td class="style43">
            <asp:RadioButton ID="rbCash" runat="server" Text="Cash" GroupName="Mode" 
                    ForeColor="Maroon" />
            <asp:RadioButton ID="rbChk" runat="server" Text="Check" GroupName="Mode" 
                    ForeColor="Maroon" />
            <asp:RadioButton ID="rbdd" runat="server" Text="DD" GroupName="Mode" 
                    ForeColor="Maroon" />
        </td>
    </tr>
    <tr>
        <td class="style42">
                Maritial Status</td>
        <td class="style43">
            <asp:RadioButton ID="rbMd" runat="server" GroupName="Mstatus" 
                    Text="Married" ForeColor="Maroon" />
            <asp:RadioButton ID="rbUm" runat="server" GroupName="Mstatus" 
                    Text="Unmarried" ForeColor="Maroon" />
        </td>
        <td style="font-weight: 700; color: #000066" class="style42">
                Slip/Cheque/DD No.</td>
        <td class="style43">
            <asp:TextBox ID="txtCD" runat="server" 
                    Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style42" width="200px;">
                Contact No.</td>
        <td class="style43" width="200px;">
            <asp:TextBox ID="txtCno" runat="server" Width="150px" BackColor="White" 
                    ForeColor="Maroon"></asp:TextBox>
        </td>
        <td class="style42" width="200px;">
                Amount</td>
        <td width="200px;" class="style43">
            <asp:TextBox ID="txtAmt" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style42">
                Qualification</td>
        <td class="style43">
            <asp:TextBox ID="txtQlf" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td style="text-align: left; width: 200px;" align="left" class="style42">
                                Slip/Check/ DD Date</td>
        <td style="text-align: left; width: 200px;" align="left" class="style43">
            <asp:DropDownList ID="dd2" runat="server" Width="40px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="mm2" runat="server" Width="50px" Height="16px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="yy2" runat="server" Width="62px" 
                    AutoPostBack="True" ForeColor="Maroon">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style42">
            <table style="width:100%;">
                <tr>
                    <td class="style42">
                            Last School Pass &amp; Year</td>
                </tr>
            </table>
        </td>
        <td class="style43">
            <asp:TextBox ID="txtLsp" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td style="text-align: left" align="left" class="style42">
                Photo</td>
        <td style="text-align: left" align="left" class="style43">
            <asp:FileUpload ID="FU" runat="server" ForeColor="Maroon" Width="218px" />
        </td>
    </tr>
    <tr>
        <td class="style42" rowspan>
                Email Address</td>
        <td class="style43" rowspan>
            <asp:TextBox ID="txtEadd" runat="server" Width="150px" ForeColor="Maroon"></asp:TextBox>
        </td>
        <td style="text-align: left" align="left" class="style42">
                Address</td>
        <td style="text-align: left" align="left" class="style43">
            <asp:TextBox ID="txtAdd" runat="server" Width="210px" TextMode="MultiLine" 
                    ForeColor="Maroon"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style42">
            <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEadd" 
                    ErrorMessage="Error: Invalid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </td>
        <td class="style42">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtCno" ErrorMessage="Please must be Number" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </td>
        <td class="style42">
            &nbsp;</td>
        <td class="style42">
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="txtCD" ErrorMessage="Please must be Number" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style42" colspan="4">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style42">
            <asp:Button ID="butSubmit" runat="server" Text="Submit" 
                    onclick="butSubmit_Click" style="text-align: center; height: 26px" />
        </td>
        <td class="style42">
            <asp:Button ID="butSubmit0" runat="server" Text="Clear" 
                    onclick="butSubmit0_Click" style="text-align: center; height: 26px" />
        </td>
        <td class="style42">
            &nbsp;</td>
        <td class="style42">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

