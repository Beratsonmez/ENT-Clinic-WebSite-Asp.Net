<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Duyuru.aspx.cs" Inherits="KBBSite.Duyuru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKBBConnectionString %>" SelectCommand="SELECT * FROM [tblDuyuru]"></asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Baslik") %></h5>
                        <p class="card-text"><%# Eval("Ozet") %></p>
                        <label>tarih : <%# Eval("Tarih") %></label>
                        <br />
                        <a href="<%#Eval("id","duyuruyazi.aspx?id={0}")%>" class="btn btn-primary">Oku</a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
           
            
</asp:Content>

