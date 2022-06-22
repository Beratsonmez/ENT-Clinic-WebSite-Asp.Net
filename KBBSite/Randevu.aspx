<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="KBBSite.Randevu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/iletisim.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="contact"  method="post" runat="server">
            <h3>Randevu Formu</h3>
            <h4>Aşağıdaki alanları doldurarak randevunuzu alabilirsiniz.</h4>
            <fieldset>
                <asp:TextBox ID="txtAdSoyad" CssClass="form-control" runat="server" placeholder="Ad Soyad giriniz.."></asp:TextBox>
            </fieldset>
            <fieldset>
                <asp:TextBox ID="txtMail" TextMode="Email" CssClass="form-control" runat="server" placeholder="Mail giriniz.."></asp:TextBox>
            </fieldset>
            <fieldset>
                <asp:TextBox ID="txtTel" TextMode="Phone"  CssClass="form-control" runat="server" placeholder="Tel giriniz.. (Zorunlu)"></asp:TextBox>
            </fieldset>
            <fieldset>
                <asp:TextBox ID="txtTc" TextMode="Phone"  CssClass="form-control" runat="server" placeholder="Tc num giriniz.. (Zorunlu)"></asp:TextBox>
            </fieldset>
            <fieldset>
                <select style="width: 10rem;" placeholder="Doktor" Name="Name_of_list_box" tabindex="5" >  
                <option> Doktor </option>  
                <option> Berat Sönmez </option>  
                <option> Mücahit Akkaya </option>  
                <option> Bilal Altın </option>  
              </select>
            </fieldset>
            <fieldset>
                <asp:TextBox ID="txtDate" TextMode="Date" CssClass="form-control" runat="server" placeholder="Tarih giriniz.."></asp:TextBox>
            </fieldset>
            <fieldset>
                <asp:TextBox ID="txtMesaj" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Mesaj giriniz.."></asp:TextBox>
            </fieldset>
            <fieldset>
                
                <asp:Button ID="btnGonder" CssClass="btn btn-primary" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
            </fieldset>
        </form>
</asp:Content>
