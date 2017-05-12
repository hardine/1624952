<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CampingGears.home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Search Product</h2>
            <form id="search" runat="server">
                Search:
                <input type="text" name="search" value="" />
                <input type="submit" value="Search" />
            </form>
            <br />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Get your Camping Gears Online with OT-Doors Co!</h2>
        <table>
            <tr>
                <td>
                    <%--<asp:ImageButton ID="Image1" runat="server" CssClass="productimages" />--%>
                    <img src="~/images/equipment/tent.png" alt="tent" style="width: 300px; height: 200px;" runat="server"/><br/>
                    <p>TENT</p>
                </td>
                <td>
                    <%--<asp:ImageButton ID="Image2" runat="server" CssClass="productimages" />--%>
                    <img src="~/images/equipment/scoop.png" alt="scoop" style="width: 300px; height: 200px;" runat="server"/><br/>
                    <p>SCOOP</p>
                </td>
            </tr>
            <tr>
                <td>
                    <%--<asp:ImageButton ID="Image3" runat="server" CssClass="productimages" />--%>
                    <img src="~/images/equipment/compass.png" alt="compass" style="width: 200px; height: 200px;" runat="server"/><br/>
                    <p>COMPASS</p>
                </td>
                <td>
                    <%--<asp:ImageButton ID="Image4" runat="server" CssClass="productimages" />--%>
                    <img src="~/images/equipment/knife.png" alt="knife" style="width: 200px; height: 200px;" runat="server"/><br/>
                    <p>KNIFE</p>
                </td>
            </tr>
        </table>

</asp:Content>
