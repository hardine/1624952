<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="accessories.aspx.cs" Inherits="CampingGears.accessories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Search Product</h2>
            <form>
                Search:
                <input type="text" name="search" value="" />
                <input type="submit" value="Search" />
            </form>
            <br />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Camping Accessories</h2>
    <table>
        <tr>
            <td>
                <img src="~/images/Personal/boots.png" alt="boots" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    BOOTS<p>
            </td>
            <td>
                <img src="~/images/Personal/hats.png" alt="hat" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    HAT<p>
            </td>
            <td>
                <img src="~/images/Personal/insect repellent.png" alt="insect repellent" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    INSECT REPELLENT<p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="~/images/Personal/shoe.png" alt="shoe" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    SHOE<p>
            </td>
            <td>
                <img src="~/images/Personal/sunblock.png" alt="sunblock cream" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    SUN BLOCK<p>
            </td>
<td>
               <img src="~/images/equipment/knife.png" alt="knife" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>KNIFE</p>
            </td>
            
        </tr>
        <tr>
    </table>
</asp:Content>
