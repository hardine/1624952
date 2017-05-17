<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="EditProductDetails.aspx.cs" Inherits="CampingGears.EditProductDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Edit Product Detail</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="productform" runat="server">
        <asp:Image ID="CurrentImage" runat="server" AlternateText="~/ProductImages/default.png"  CssClass="prodimages" /><br />
        <asp:FileUpload ID="ImageFileUploadControl" runat="server" /><br />
        <asp:Button ID="submitbutton" runat="server" Text="Submit" OnClick="submitbutton_Click" /><br />
<asp:Label ID="productnamelbl" runat="server" Text="Product Name:"></asp:Label><br/>
 <asp:TextBox ID="productName" runat="server" TextMode="SingleLine" Height="16px" Width="300px"></asp:TextBox><br/><br/>
<asp:Label ID="categorylbl" runat="server" Text="Category:"></asp:Label><br/>
     <asp:DropDownList ID="categorydropdown" runat="server" BorderWidth="2px" >
         <asp:ListItem Value="0">Camping Equipment</asp:ListItem>
         <asp:ListItem Value="1">Kitchen Equipment</asp:ListItem>
         <asp:ListItem Value="2">Camping Accessories</asp:ListItem>
     </asp:DropDownList><br/><br/>
     <asp:Label ID="Descriptionlbl" runat="server" Text="Description:"></asp:Label><br/>
     <asp:TextBox ID="description" runat="server" TextMode="MultiLine" BorderWidth="2px" Height="91px" Width="300px"></asp:TextBox><br/><br/>
     <asp:Label ID="stocklbl" runat="server" Text="stock:"></asp:Label><br/>
<asp:TextBox ID="stock" runat="server" TextMode="SingleLine" Height="16px" Width="300px"></asp:TextBox><br/><br/>
     <asp:Label ID="pricelbl" runat="server" Text="Price:"></asp:Label><br/>
<asp:TextBox ID="Price" runat="server" TextMode="SingleLine" Height="16px" Width="300px"></asp:TextBox><br/><br/>
         <asp:Button ID="Button1" runat="server" Text="Back" OnClick="back_button_Click" />
     <asp:Button ID="editproduct_button" runat="server" Text="Update Product" OnClick="editproduct_button_Click" />
</form>
    <asp:Label ID="Lerroralert" runat="server" CssClass="errormsg"></asp:Label>
</asp:Content>
