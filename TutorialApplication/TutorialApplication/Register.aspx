<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TutorialApplication.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>Register</h1>
            <hr />
            <table>
                <tr>
                    <td>Firstname</td><td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Lastname</td><td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td><td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mobile</td><td>
                        <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td><td>
                        <asp:TextBox ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td></td><td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" /></td></tr>
            </table>
            <div>
                <asp:Label Text="" ID="lblResult" runat="server" />
            </div>
            <div>
                <h2>User Details</h2>
                <hr />
                <asp:GridView ID="gvUserInfo" runat="server"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
