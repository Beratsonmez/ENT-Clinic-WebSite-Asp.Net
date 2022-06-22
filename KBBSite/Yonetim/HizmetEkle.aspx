<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="HizmetEkle.aspx.cs" Inherits="KBBSite.Yonetim.HizmetEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Hizmet Ekle, <span>Aşağıdaki bölümleri kullanarak hizmet oluşturup yayınlayınız.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-title">
                <h4>Hizmet Ekle</h4>

            </div>
            <div class="card-body">
                <div class="basic-elements">
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Başlık</label>
                                    <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Başlık giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Hizmet Açıklaması</label>
                                    <asp:TextBox ID="txtHizmet" CssClass="form-control" runat="server" placeholder="Açıklama giriniz.."></asp:TextBox>
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
