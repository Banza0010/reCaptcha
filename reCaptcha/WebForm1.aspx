<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="reCaptcha.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">
            <h3>User registration</h3>
            <table style="border: 1px solid black">
                <tr>
                    <td><b>Name </b></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><b>Email </b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><b>Password </b></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="230px" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=".."></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
        
    </form>
</body>
</html>
