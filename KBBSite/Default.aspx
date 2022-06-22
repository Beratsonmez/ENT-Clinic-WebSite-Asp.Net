<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KBBSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <<div class="col-md-8 col-lg-6 col-xl-4">
                    <div class="card text-black">

                        <img src="assets/images/kulak-estetik.jpg" class="card-img-top" alt="Apple Computer" />
                        <div class="card-body">
                            <div class="text-center">
                                <h5 class="card-title">Kulak estetik ameliyatı</h5>
                                <p class="text-muted mb-4">Uz. Dr. Mücahit Altın</p>
                            </div>
                            <div>
                                <div class="d-flex justify-content-between">
                                    <span>Estetik</span><span><del><small>₺3,000</small></del> ₺2,000</span>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <span>Konaklama</span><span><del><small>₺600</small></del> ₺200</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between total font-weight-bold mt-4">
                                <span>Total</span><span><del><small>₺3,600</small></del> ₺2,200</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4">
                    <div class="card text-black">

                        <img src="assets/images/burun-estetik.jpg" style="max-height: 183px;" class="card-img-top" alt="Apple Computer" />
                        <div class="card-body">
                            <div class="text-center">
                                <h5 class="card-title">Burun estetik ameliyatı</h5>
                                <p class="text-muted mb-4">Uz. Dr. Bilal Akkaya</p>
                            </div>
                            <div>
                                <div class="d-flex justify-content-between">
                                    <span>Estetik</span><span><del><small>₺5,999</small></del> ₺4,500</span>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <span>Konaklama</span><span><del><small>₺600</small></del> ₺200</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between total font-weight-bold mt-4">
                                <span>Total</span><span><del><small>₺6,599</small></del> ₺4,700</span>
                            </div>
                        </div>
                    </div>
                </div>


     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbKBBConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [tblDuyuru]"></asp:SqlDataSource>

        <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="card text-center">
                <div class="card-header">
                    <h4>Son Haber</h4>
                </div>
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("Baslik") %></h5>
                    <p class="card-text"><%# Eval("Ozet") %> </p>
                    <a href="<%#Eval("id","duyuruyazi.aspx?id={0}")%>" " class="btn btn-dark">Duyuruya git</a>
                </div>
                <div class="card-footer text-muted">
                   <%# Eval("Tarih") %>
                </div>
            </div>
                
        </ItemTemplate>
         </asp:Repeater>
        
  
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
        <div class="card">
            <div class="card-body">
                <h3>Deviasyon</h3>
                <br>
                <p>
                   Burun deviasyonu, burun orta duvarının orta hattan kayması ile iki burun deliğinden herhangi birini tıkaması rahatsızlığı olarak bilinmektedir. Tıp dilinde daha çok septum deviasyonu olarak bilinen deviasyon, halk arasında burun kemiği eğriliği adıyla adlandırılmaktadır. Burun tıkanıklığından muzdarip olan hastalarda pek çok şikayet görülebilmektedir. Deviasyon belirtileri görülen hastaların tedavisi ameliyat şeklinde yapılmaktadır.

Burunun anatomik yapısına bakıldığında, burunu ortadan bir duvar ile ikiye bölünmüş genişçe bir kanal veya tünel olarak tanımlamak mümkündür. İşte burun içinde yer alan ve ortadan ikiye bölen duvarın ismi, tıbbi literatürde septum nasale’dir. Her bir tünelin en ve uzunluğunun birbirlerine yakın olması, normal olması gereken ölçülerdir. Bir başka deyişle insanların sağlıklı bir şekilde burnundan rahatça nefes alabilmeleri ve burun tıkanıklığı ile ilgili olan pek çok rahatsızlıktan muzdarip olmamaları için septum nasale’nin eşit şekilde burun deliklerini ayırması gerekmektedir.
                </p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
</asp:Content>
