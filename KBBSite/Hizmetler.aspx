<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Hizmetler.aspx.cs" Inherits="KBBSite.Hizmetler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKBBConnectionString %>" SelectCommand="SELECT * FROM [tblHizmet]"></asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <div class="row-sm-9">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Baslik") %></h5>
                        <p class="card-text"><%# Eval("Hizmet") %></p>
                    </div>
                </div>
            </div>

            </ItemTemplate>
        </asp:Repeater>
   </div>
</asp:Content>
