<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="duyuruyazi.aspx.cs" Inherits="KBBSite.duyuruyazi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKBBConnectionString %>" SelectCommand="SELECT * FROM [tblDuyuru] WHERE (id = @id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                         <div class="card" style="margin-top: 8rem; margin-bottom:8rem;">
                <div class="card-body">
                      <img class="card-img-top" src="images/<%# Eval("Resim") %>" alt="Card image cap">
                        <br />
                        <br />
                        <br />

                       <h1><%# Eval("Baslik") %></h1>
                <br>
                <p style="text-align: left;"><%# Eval("Yazi") %></p>
                <hr id="yazisonu">
                
                <h6>Tarih : <%# Eval("Tarih") %></h6>
              </div>
         

    </div>
                    </ItemTemplate>
                </asp:DataList>
           

           </div>
      

</asp:Content>
