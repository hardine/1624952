<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="CampingGears.UploadImage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="ImageFileUploadControl" runat="server" />
        <h5>NOTE:Image will be uploaded based on 230px X 230px size</h5>
        <br />
        <br />
       
        <asp:Image ID="CurrentImage" runat="server" AlternateText="~/ProductImages/default.png" CssClass="prodimages" />
        <br />
        <asp:Button ID="submitbutton" runat="server" Text="Submit" OnClick="submitbutton_Click" />
        <br />
    </form>
     <asp:Label ID="Lerroralert" runat="server" CssClass="errormsg"></asp:Label>
</asp:Content>
