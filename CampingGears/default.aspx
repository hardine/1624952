<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CampingGears.home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Search Product</h2>   
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="search" runat="server">
     Search:
       <input type="text" name="search" value="" />
       <asp:Button ID="search_button" runat="server" Text="Search"/>
        <br />
    <h2>Get your Camping Gears Online with OT-Doors Co!</h2>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="Image1" runat="server" AlternateText="Tent" postbackurl='viewindividualproduct.aspx?ProductID=1' CssClass="productimages"/><br/>
                    <p>TENT</p>
                </td>
                <td>
                    <asp:ImageButton ID="Image2" runat="server" AlternateText="Sleeping Bag" postbackurl='viewindividualproduct.aspx?ProductID=2' CssClass="productimages" /><br/>
                    <p>SLEEPING BAG</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="Image3" runat="server" AlternateText="Knife" postbackurl='viewindividualproduct.aspx?ProductID=5' CssClass="productimages" /><br/>
                    <p>KNIFE</p>
                </td>
                <td>
                    <asp:ImageButton ID="Image4" runat="server" AlternateText="Boots" postbackurl='viewindividualproduct.aspx?ProductID=6' CssClass="productimages" /><br/>
                    <p>BOOTS</p>
                </td>
            </tr>
        </table>
           </form>
</asp:Content>
