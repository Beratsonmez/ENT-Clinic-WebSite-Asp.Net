<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KampanyaYonet.aspx.cs" Inherits="KBBSite.Yonetim.KampanyaYonet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Yönetim, <span>Aşağıdaki listelerden duyuru ve yazılarınızı siteden kaldırabilirsiniz.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKBBConnectionString %>" SelectCommand="SELECT * FROM [tblKampanya]" DeleteCommand="DELETE FROM [tblKampanya] WHERE [id] = @id" InsertCommand="INSERT INTO [tblKampanya] ([Baslik], [Doktor], [Alan], [NormalF], [IndirimF], [Resim], [Islem]) VALUES (@Baslik, @Doktor, @Alan, @NormalF, @IndirimF, @Resim, @Islem)" UpdateCommand="UPDATE [tblKampanya] SET [Baslik] = @Baslik, [Doktor] = @Doktor, [Alan] = @Alan, [NormalF] = @NormalF, [IndirimF] = @IndirimF, [Resim] = @Resim, [Islem] = @Islem WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Baslik" Type="Object" />
            <asp:Parameter Name="Doktor" Type="String" />
            <asp:Parameter Name="Alan" Type="String" />
            <asp:Parameter Name="NormalF" Type="String" />
            <asp:Parameter Name="IndirimF" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Islem" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Baslik" Type="Object" />
            <asp:Parameter Name="Doktor" Type="String" />
            <asp:Parameter Name="Alan" Type="String" />
            <asp:Parameter Name="NormalF" Type="String" />
            <asp:Parameter Name="IndirimF" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Islem" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <form runat="server">
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="id">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Doktor" HeaderText="Doktor" SortExpression="Doktor" />
                    <asp:BoundField DataField="Alan" HeaderText="Alan" SortExpression="Alan" />
                    <asp:BoundField DataField="NormalF" HeaderText="NormalF" SortExpression="NormalF" />
                    <asp:BoundField DataField="IndirimF" HeaderText="IndirimF" SortExpression="IndirimF" />
                    <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                    <asp:BoundField DataField="Islem" HeaderText="Islem" SortExpression="Islem" />
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                <RowStyle BackColor="#f5f5f5" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
            </asp:GridView>
        </div>
    </form>
</asp:Content>
