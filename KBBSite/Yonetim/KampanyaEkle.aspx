<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KampanyaEkle.aspx.cs" Inherits="KBBSite.Yonetim.KampanyaEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Kampanya Ekle, <span>Aşağıdaki bölümleri kullanarak kampanya oluşturup yayınlayınız.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-title">
                <h4>Kampanya Ekle</h4>

            </div>
            <div class="card-body">
                <div class="basic-elements">
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Başlık</label>
                                    <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Başlık giriniz.. Maks 60 karakter.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Doktor</label>
                                    <asp:TextBox ID="txtDoktor" CssClass="form-control" runat="server" placeholder="Doktor giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Alan</label>
                                    <asp:TextBox ID="txtAlan" CssClass="form-control" runat="server" placeholder="Bir Alan giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>İşlem</label>
                                    <asp:TextBox ID="txtIslem" CssClass="form-control" runat="server" placeholder="Bir İşlem giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Normal Fiyat</label>
                                    <asp:TextBox ID="txtNFiyat" CssClass="form-control" runat="server" placeholder="Fiyat giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>İndirimli Fiyat</label>
                                    <asp:TextBox ID="txtindirim" CssClass="form-control" runat="server" placeholder="İndirimli Fiyat giriniz.."></asp:TextBox>
                                </div>
        <div class="form-group">
            <label>Resim</label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control btn-flat" />
            <asp:Button ID="btnResimEkle" CssClass="btn btn-primary" runat="server" Text="Resmi Yükle" OnClick="btnResimEkle_Click" />
            <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>

        </div>
        <div class="button-list">
            <asp:Button ID="btnYayımla" CssClass="btn btn-primary" runat="server" Text="Yayımla" OnClick="btnYayımla_Click" />

        </div>
    </div>
    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
