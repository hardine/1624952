<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CampingGears.contact" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Contact Us</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="contact">
<form>
<p>Name:</p> <input type="text" name="Name"/> </br>
<p>Email:</p> <input type="text" name="Email"/> </br>
<p>Message:</p> <input type="text" id="message" name="comment"/> </br>
<input type="submit" value="Submit"/> </br>
</form>
</div>
<img src="images/map.PNG" alt="" style="width:600px;height:300px;"/>
    <div id="contactdetails">
        <h2>Contact Us</h2>
    <p>ot-doors@hotmail.com</p></br>
    <p>+6732224443</p></br>
    <p>Bangunan A, Kampong Jaya Setia</p>
        </br>
        </div>
</asp:Content>