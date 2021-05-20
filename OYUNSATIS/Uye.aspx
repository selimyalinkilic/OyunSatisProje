<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Uye.aspx.cs" Inherits="OYUNSATIS.Uye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-12">
            <asp:Label ID="lblbaslik" runat="server" Font-Size="X-Large"
                Text="Üye Sayfası"></asp:Label>
            <br />
        </div>
        <br />
        <div class="col-md-4">
            <div class="list-group">
                <a href="Uye.aspx" class="list-group-item  active">Profilim
                </a>
                <a href="UyeDuzenle.aspx" id="hplprflduzenle" class="list-group-item">Profil Düzenle</a>
                <a href="Siparislerim.aspx" class="list-group-item">Siparişlerim</a>
                <a href="Bakiyem.aspx" class="list-group-item">Bakiyem</a>
                <asp:LinkButton ID="lnkcikis" runat="server" OnClick="lnkcikis_Click" CssClass="list-group-item">Çıkış</asp:LinkButton>
            </div>
        </div>
        <center><h3><span class="label label-info">Kayıt Tarihi</span></h3>
        <h3>
            <asp:Label ID="lbltarih" runat="server"></asp:Label></h3></center>
        <div class="col-md-8">
            <div class="col-md-3">
                <center><h3><span class="label label-info">Ad</span></h3>
                <h3>
                    <asp:Label ID="lblad" runat="server"></asp:Label></h3></center>
            </div>
            <div class="col-md-3">
                <center><h3><span class="label label-info">Soyad</span></h3>
                <h3>
                    <asp:Label ID="lblsoyad" runat="server"></asp:Label></h3></center>
            </div>
            
            <div class="col-md-3">
               <center><h3><span class="label label-info">Ülke</span></h3>
                <h3>
                    <asp:Label ID="lblulke" runat="server"></asp:Label></h3></center>
            </div>

            <div class="col-md-3">
                <center><h3><span class="label label-info">EMail</span></h3>
                <h5>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label></h5></center>
            </div>
        </div>
        <div class="col-md-8">
            <div class="col-md-3">
                <center><h3><span class="label label-info">Şehir</span></h3>
                <h3>
                    <asp:Label ID="lblsehir" runat="server"></asp:Label></h3></center>
            </div>
            <div class="col-md-3">
                <center><h3><span class="label label-info">İlçe</span></h3>
                <h3>
                    <asp:Label ID="lblilce" runat="server"></asp:Label></h3></center>
            </div>
            <div class="col-md-3">
                <center><h3><span class="label label-info">Adres</span></h3>
                <h3>
                    <asp:Label ID="lbladres" runat="server"></asp:Label></h3></center>
            </div>
            <div class="col-md-3">
                <center><h3><span class="label label-info">Telefon</span></h3>
                <h3>
                    <asp:Label ID="lbltel" runat="server"></asp:Label></h3></center>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
