<%@ Page Title="" Language="C#" MasterPageFile="~/TutorialMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TutorialApplication.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Tutorial Application</h2>
    <hr />
    <table>
        <tr>
            <td>Firstname</td><td>
                <asp:Label ID="lblfname" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Lastname</td><td>
                <asp:Label ID="lbllname" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Email</td><td>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Mobile</td><td>
                <asp:Label ID="lblmobile" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>
