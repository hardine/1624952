<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="viewindividualproduct.aspx.cs" Inherits="CampingGears.viewindividualproduct" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Edit Product Detail</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="productform" runat="server">
        <asp:Image ID="CurrentImage" runat="server" AlternateText="~/ProductImages/default.png" CssClass="prodimages" /><br/>
<asp:Label ID="productnamelbl" runat="server" Text="Product Name:"></asp:Label><br/>
 <asp:TextBox ID="productName" runat="server" TextMode="SingleLine" Height="16px" Width="300px" ReadOnly="True"></asp:TextBox><br/><br/>
     <asp:Label ID="Descriptionlbl" runat="server" Text="Description:"></asp:Label><br/>
     <asp:TextBox ID="description" runat="server" TextMode="MultiLine" BorderWidth="2px" Height="91px" Width="300px" ReadOnly="True"></asp:TextBox><br/><br/>
     <asp:Label ID="stocklbl" runat="server" Text="stock:"></asp:Label><br/>
<asp:TextBox ID="stock" runat="server" TextMode="SingleLine" Height="16px" Width="300px" ReadOnly="True"></asp:TextBox><br/><br/>
     <asp:Label ID="pricelbl" runat="server" Text="Price:"></asp:Label><br/>
<asp:TextBox ID="Price" runat="server" TextMode="SingleLine" Height="16px" Width="300px" ReadOnly="True"></asp:TextBox><br/><br/>
         <asp:Button ID="Button1" runat="server" Text="Back" OnClick="back_button_Click" />
           <%    if (Request.IsAuthenticated)
            { %>
                 <asp:Button ID="addtocart_button" runat="server" Text="Add to Cart" OnClick="addtocart_button_Click" />
          <%   }%>
</form>
    <asp:Label ID="Lerroralert" runat="server" CssClass="errormsg"></asp:Label>
</asp:Content>
