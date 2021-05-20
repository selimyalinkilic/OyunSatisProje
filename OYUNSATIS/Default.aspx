<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OYUNSATIS.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Oyun Satış | Anasayfa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row carousel-holder">
            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="slide-image" src="/Resim/10883bf60d284008s.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="/Resim/31643135d12fcb60s.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="/Resim/best-download-free-games-wallpaper-hd-46-800x300.jpg" alt="">
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>

                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-md-9 stil">
                    <h3>
                        <a href="/Kategoriler/YeniEklenenler.aspx">Yeni Eklenenler</a></h3>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-3">
                            <div class="thumbnail icerik">
                                <img src="<%# Eval("urun_resim") %>" alt="" height="150" width="320" />
                                <div class="caption">
                                    <h5 class="pull-right"><%#Eval("urun_fiyat")%> TL</h5>
                                    <h6>
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("urun_ad") %>' /><br />
                                    </h6>
                                    <hr />
                                    <p>
                                        <center><a href="<%# "/UrunDetay.aspx?urun="+Eval("urun_id") %>"><span class="glyphicon glyphicon-list"></span> Detaylı İncele</a></center>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
        <hr />

        <div class="row">
            <div class="row">
                <div class="col-md-9 stil">
                    <h3>
                        <a href="/Kategoriler/OnSiparistekiler.aspx">Ön Sipariştekiler</a></h3>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-3">
                            <div class="thumbnail icerik">
                                <img src="<%# Eval("urun_resim") %>" alt="" height="150" width="320" />
                                <div class="caption">
                                    <h5 class="pull-right"><%#Eval("urun_fiyat")%> TL</h5>
                                    <h6>
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("urun_ad") %>' /><br />
                                    </h6>
                                    <hr />
                                    <p>
                                        <center><a href="<%# "/UrunDetay.aspx?urun="+Eval("urun_id") %>"><span class="glyphicon glyphicon-list"></span> Detaylı İncele</a></center>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
             <hr />
        </div>
          <div class="row">
            <div class="row">
                <div class="col-md-9 stil">
                    <h3>
                        <a href="/Kategoriler/Indirimdekiler.aspx">İndirimdekiler</a></h3>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-3">
                            <div class="thumbnail icerik">
                                <img src="<%# Eval("urun_resim") %>" alt="" height="150" width="320" />
                                <div class="caption">
                                    <h5 class="pull-right">
                                        <%#Eval("yeni_fiyat")%> TL</h5>
                                    <h5 class="pull-right" style="text-decoration: line-through;"><%#Eval("urun_fiyat")%>TL</h5>
                                    <h6>
                                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("urun_ad") %>' /><br />
                                    </h6>
                                    <hr />
                                    <p>
                                        <center><a href="<%# "/UrunDetay.aspx?urun="+Eval("indirim_id") %>"><span class="glyphicon glyphicon-list"></span> Detaylı İncele</a></center>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
        
    </div>

</asp:Content>
