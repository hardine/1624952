<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="CampingGears.UploadImage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="ImageFileUploadControl" runat="server" />
        <br />
        <br />
        <asp:Image ID="CurrentImage" runat="server" CssClass="prodimages" />
        <br />
        <asp:Button ID="submitbutton" runat="server" Text="Submit" OnClick="submitbutton_Click" />
        <br />
    </form>
     <asp:Label ID="Lerroralert" runat="server" CssClass="errormsg"></asp:Label>
</asp:Content>
