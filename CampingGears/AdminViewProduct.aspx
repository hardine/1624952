<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="AdminViewProduct.aspx.cs" Inherits="CampingGears.AdminViewProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>View Product List</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" CellSpacing="-1" GridLines="None">
             <Columns>
                 <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="updateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?'); "/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Flag" HeaderText="Flag" SortExpression="Flag" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                 <asp:TemplateField>
                     <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ProductID", "UploadImage.aspx?ProductID={0}") %>' Text="Image" CssClass="setimage"></asp:HyperLink>
                     </ItemTemplate>
                 </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBConnection %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Flag] = @original_Flag) OR ([Flag] IS NULL AND @original_Flag IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" 
            InsertCommand="INSERT INTO [Product] ([ProductName], [Category], [Description], [Flag], [Stock], [price], [Image]) VALUES (@ProductName, @Category, @Description, @Flag, @Stock, @price, @Image)" OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Product]" 
            UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Category] = @Category, [Description] = @Description, [Flag] = @Flag, [Stock] = @Stock, [price] = @price, [Image] = @Image WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Flag] = @original_Flag) OR ([Flag] IS NULL AND @original_Flag IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_Category" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Flag" Type="Int32" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Double" />
                <asp:Parameter Name="original_Image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Category" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Flag" Type="Int32" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Category" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Flag" Type="Int32" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_Category" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Flag" Type="Int32" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Double" />
                <asp:Parameter Name="original_Image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #form1 {
            width: 453px;
            height: 208px;
            margin-right: 0px;
        }
    </style>
</asp:Content>

