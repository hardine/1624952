<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CampingGears.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Login</h2>
    <br />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="LoginDiv">
        <form id="LoginForm" runat="server">
            <div>
                <asp:Label ID="lblusername" runat="server" Text="Username:" AssociatedControlID="Lusername"></asp:Label><br />
                <asp:TextBox ID="Lusername" runat="server" TextMode="SingleLine" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblpassword" runat="server" Text="Password:" AssociatedControlID="Lpassword"></asp:Label><br />
                <asp:TextBox ID="Lpassword" runat="server" TextMode="Password" BorderWidth="2px" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <br />
              </div>
            <div>
                <asp:Button ID="btnSend" runat="server" Text="Login" OnClick="btnSend_Click" /><br />
            </div>
        </form>
        <asp:Label ID="Lerroralert" runat="server" CssClass="errormsg"></asp:Label>
    </div>
</asp:Content>
