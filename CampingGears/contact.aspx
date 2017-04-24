<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CampingGears.contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Contact Us</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="name"></asp:Label><br />
                <asp:TextBox ID="name" runat="server" TextMode="SingleLine" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <asp:Label ID="lblemail" runat="server" Text="Email:" AssociatedControlID="email"></asp:Label><br />
                <asp:TextBox ID="email" runat="server" TextMode="SingleLine" Height="16px" Width="281px"></asp:TextBox>
                <br />
                <asp:Label ID="lblMessage" runat="server" Text="Comments:" AssociatedControlID="txtMessageBody"></asp:Label><br />
                <asp:TextBox ID="txtMessageBody" runat="server" TextMode="MultiLine" BorderWidth="2px" Height="91px" Width="379px"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSend" runat="server" Text="Submit" OnClick="btnSend_Click" /><br />
            </div>
        </form>
        <asp:Label ID="erroralert" runat="server" CssClass="errormsg"></asp:Label>
    </div>
    <div id="map" style="width: 600px; height: 250px;"></div>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjdLLOCyBoD3rOuiJcVJhAARekXWkemOc&amp;callback=initmap"></script>
    <noscript>
        <img width="600" height="280" src="https://maps.googleapis.com/maps/api/staticmap?center=laksamana+college&zoom=17&amp;scale=false&amp;size=545x300&amp;maptype=roadmap&amp;format=png&amp;visual_refresh=true&amp;markers=icon:OT DOORS COMPANY%7Cshadow:true%7Claksamana+college" alt="Google Map of OT-DOORS COMPANY, Bangunan A, Kampong Jaya Setia<" />
    </noscript>
    <div id="contactdetails">
        <h2>Contact Us</h2>
        <p>ot-doors@hotmail.com</p>
        <br />
        <p>+6732224443</p>
        <br />
        <p>Bangunan A, Kampong Jaya Setia</p>
        <br />
    </div>
</asp:Content>
