<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="kitchen.aspx.cs" Inherits="CampingGears.kitchen" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Search Product</h2>
            <form>
                Search:
                <input type="text" name="search" value="" />
                <input type="submit" value="Search" />
            </form>
            <br />
    <hr />
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Kitchen Equipments</h2>
    <table>
        <tr>
            <td>
                <img src="~/images/Cooking/firestarter.png" alt="fire starter" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    FIRE STARTER<p>
            </td>
            <td>
                <img src="~/images/Cooking/fuelbottle.png" alt="fuel bottle" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    FUEL BOTTLE<p>
            </td>
            <td>
                <img src="~/images/Cooking/gas.png" alt="gas" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    GAS<p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="~/images/Cooking/lighter.png" alt="lighter" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    LIGHTER<p>
            </td>
            <td>
                <img src="~/images/Cooking/piringset.png" alt="plates" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    SET OF PLATES<p>
            </td>
            <td>
                <img src="~/images/Cooking/stove.png" alt="stove" style="width: 200px; height: 200px;" runat="server" /><br>
                <p>
                    STOVE<p>
            </td>
        </tr>
    </table>
</asp:Content>
