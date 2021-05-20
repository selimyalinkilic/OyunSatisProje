<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Siparislerim.aspx.cs" Inherits="OYUNSATIS.Siparislerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="col-md-12">
            <asp:Label ID="Label8" runat="server" Font-Size="X-Large"
                Text="Siparişlerim"></asp:Label>
            <br />
        </div>
        <br />
        <div class="col-md-4">
            <div class="list-group">
                <a href="Uye.aspx" class="list-group-item">Profilim
                </a>
                <a href="UyeDuzenle.aspx" id="hplprflduzenle" class="list-group-item">Profil Düzenle</a>
                <a href="Siparislerim.aspx" class="list-group-item  active">Siparişlerim</a>
                <a href="Bakiyem.aspx" class="list-group-item">Bakiyem</a>
                <asp:LinkButton ID="lnkcikis" runat="server" CssClass="list-group-item" OnClick="lnkcikis_Click" ValidationGroup="Yok">Çıkış</asp:LinkButton>
            </div>
        </div>
        <div class="col-md-8">
            <table class="table">
                <thead>
                    <tr>
                        <td>
                            Sipariş No
                        </td>
                        <td>
                            Açıklama
                        </td>
                        
                        <td>
                            Fiyat
                        </td>
                        <td>
                            Durum
                        </td>
                    </tr>
                </thead>
                <asp:Repeater runat="server" ID="Repeater1">
                    <ItemTemplate>
                        <tbody>
                        <tr>
                        <td>
                            <%# Eval("siparis_id") %>
                        </td>
                        <td>
                            <%# Eval("aciklama") %>
                        </td>
                        <td>
                            <%# Eval("toplam_fiyat") %>
                        </td>
                        <td>
                            <%# Eval("durum") %>
                        </td>
                    </tr>
                </tbody>
                    </ItemTemplate>
                </asp:Repeater>
                

            </table>
        </div>
    </div>
</asp:Content>
