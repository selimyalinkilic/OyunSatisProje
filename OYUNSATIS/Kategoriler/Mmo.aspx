<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Mmo.aspx.cs" Inherits="OYUNSATIS.Kategoriler.Mmo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Oyun Satış | MMO</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="col-sm-9 col-md-9">
            <div class="row">
                <div class="col-sm-9">
                    <h3>MMO</h3>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-4">
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
    </div>
</asp:Content>
