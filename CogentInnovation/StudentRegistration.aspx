<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="CogentInnovation.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style4 {
            width: 234px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 234px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 234px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtName" runat="server" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblDOB" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAge" runat="server" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rdbMale" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="rdbFemale" runat="server" GroupName="Gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblPhoneNo" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPhoneNo" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlSubject" runat="server" Height="21px" Width="185px">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Computer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
