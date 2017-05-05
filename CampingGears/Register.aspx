<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CampingGears.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Register</h2>
    <br />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="LoginDiv">
        <form id="RegisterForm" runat="server">
            <div>
                <asp:Label ID="lablusername" runat="server" Text="Username:" AssociatedControlID="uname"></asp:Label><br />
                <asp:TextBox ID="uname" runat="server" TextMode="SingleLine" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lablpassword" runat="server" Text="Password:" AssociatedControlID="pword"></asp:Label><br />
                <asp:TextBox ID="pword" runat="server" TextMode="Password" BorderWidth="2px" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <br />
              </div>
            <div>
                <asp:Button ID="btnSend" runat="server" Text="Register" OnClick="btnSend_Click" /><br />
            </div>
        </form>
        <asp:Label ID="erralert" runat="server" CssClass="errormsg"></asp:Label>
    </div>
</asp:Content>
