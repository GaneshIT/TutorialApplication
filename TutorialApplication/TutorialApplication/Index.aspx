<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TutorialMaster.Master" CodeBehind="Index.aspx.cs" Inherits="TutorialApplication.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--    css--%>
    <%--javascript--%>
    <script type="text/javascript">
        function validate() {
            var flag = false;
            var Tutorialid = document.getElementById("<%=txtTutorialId.ClientID%>").value;
            var TutorialName = document.getElementById("<%=txtTutorialName.ClientID%>").value;
            var TutorialDesc = document.getElementById("<%=txtTutorialDesc.ClientID%>").value;
            var Published = document.getElementById("<%=txtPublished.ClientID%>").value;
            if (Tutorialid == '')
                alert('Tutorialid cannot be empty');
            else if (TutorialName == '')
                alert('TutorialName cannot be empty');
            else if (TutorialDesc == '')
                alert('TutorialDesc cannot be empty');
            else if (Published == '')
                alert('Published cannot be empty');
            else
                flag = true;
            return flag;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="background-color: aqua;">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Tutorial Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTutorialId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Tutorial Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTutorialName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtTutorialDesc" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Published"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPublished" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return validate()" OnClick="btnSave_Click" />
                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /></td>
            </tr>
        </table>



        <hr />
        <asp:Label Text="" ID="lblResult" runat="server" />
        <hr />
        <h2>Tutorial Details</h2>

        <asp:GridView ID="gvTutorialDetails" runat="server"></asp:GridView>
    </div>
</asp:Content>

