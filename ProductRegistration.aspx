<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Day10AssignmentWebServerControls.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            width: 282px;
        }
        .auto-style4 {
            width: 266px;
            height: 29px;
        }
        .auto-style5 {
            width: 282px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
    <link href="OurStyle.css" rel="StyleSheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/p1.jpg" Width="127px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Product Name </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtPName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPName" ErrorMessage="Product Name is Required" ForeColor="#990000">Enter Product Name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Product Category</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="listProductCategory" runat="server">
                        <asp:ListItem>Wired Headphones</asp:ListItem>
                        <asp:ListItem>Wireless HeadPhones</asp:ListItem>
                        <asp:ListItem>Wired Earphones</asp:ListItem>
                        <asp:ListItem>Wireless Earphones</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="listProductCategory" ErrorMessage="Select Category of Product" ForeColor="#990000">Select Category of Product</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Product Price</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter Price of Product" ForeColor="#990000">Give the Product Description</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter Only Numberic values" ForeColor="#990000" ValidationExpression="(/^[0-9]+$/)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Product Description </td>
                <td class="auto-style3">
                    <textarea id="TxtDescription" cols="20" name="S1" rows="2"></textarea></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDescription" ErrorMessage="Decribe the Product" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Product Release Date</td>
                <td class="auto-style3">
                    <asp:Calendar ID="Calreleasedate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" Width="220px" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#FFCC66" Height="1px" Font-Bold="True" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register Product" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Calreleasedate" ErrorMessage="Select the release date" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="LblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
