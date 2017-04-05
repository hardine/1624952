<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="equipment.aspx.cs" Inherits="CampingGears.equipment" %>
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
     <h2>Camping Equipments</h2>
    <table>
        <tr>
            <td>
                <img src="~/images/equipment/campingbag.png" alt="camping bag" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>CAMPING BAG</p>
            </td>
            <td>
                <img src="~/images/equipment/chair.png" alt="chair" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>CHAIR</p>
            </td>
            <td>
                <img src="~/images/equipment/compass.png" alt="compass" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>COMPASS</p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="~/images/equipment/electro-latern.png" alt="Electric Lantern" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>ELECTRIC LANTERN</p>
            </td>
            <td>
                   <img src="~/images/equipment/rope.png" alt="rope" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>ROPE</p>
            </td>
            <td>
                <img src="~/images/equipment/sleepingbag.png" alt="sleeping bag" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>SLEEPING BAG</p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="~/images/equipment/stick.png" alt="stick" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>STICK</p>
            </td>
            <td>
                <img src="~/images/equipment/tent.png" alt="tent" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>TENT</p>
            </td>
            <td>
                <img src="~/images/equipment/scoop.png" alt="scoop" style="width: 200px; height: 200px;" runat="server" /><br />
                <p>SCOOP</p>
            </td>
        </tr>
    </table>
</asp:Content>
