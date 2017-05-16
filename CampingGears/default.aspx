<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CampingGears.home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Search Product</h2>   
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="search" runat="server">
     Search:
       <input type="text" name="search" value="" />
       <asp:Button ID="search_button" runat="server" Text="Search" OnClick="search_button_Click" />
        <br />
    <h2>Get your Camping Gears Online with OT-Doors Co!</h2>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="Image1" runat="server" postbackurl='viewindividualproduct.aspx?ProductID=1' CssClass="productimages" OnClick="Image1_Click" />
                    <%--<img src="~/images/equipment/tent.png" alt="tent" style="width: 300px; height: 200px;" runat="server"/>--%><br/>
                    <p>TENT</p>
                </td>
                <td>
                    <asp:ImageButton ID="Image2" runat="server" postbackurl='viewindividualproduct.aspx?ProductID=2' CssClass="productimages" />
                    <%--<img src="~/images/equipment/scoop.png" alt="scoop" style="width: 300px; height: 200px;" runat="server"/>--%><br/>
                    <p>SLEEPING BAG</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="Image3" runat="server" postbackurl='viewindividualproduct.aspx?ProductID=5' CssClass="productimages" />
                    <%--<img src="~/images/equipment/compass.png" alt="compass" style="width: 200px; height: 200px;" runat="server"/>--%><br/>
                    <p>KNIFE</p>
                </td>
                <td>
                    <asp:ImageButton ID="Image4" runat="server" postbackurl='viewindividualproduct.aspx?ProductID=6' CssClass="productimages" />
                    <%--<img src="~/images/equipment/knife.png" alt="knife" style="width: 200px; height: 200px;" runat="server"/>--%><br/>
                    <p>BOOTS</p>
                </td>
            </tr>
        </table>
           </form>
</asp:Content>
