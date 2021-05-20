<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="UyeGiris.aspx.cs" Inherits="OYUNSATIS.UyeGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">Üye Ol</div>
            <div class="panel-body">
                <div class="col-sm-6">
                    <form class="col-sm-12">
                        
                        <fieldset class="form-group">
                            <label for="kul_adi">E-mail</label>
                            <asp:TextBox ID="txtKul_Adi" runat="server" CssClass="form-control" ></asp:TextBox>
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="sifre">Şifre</label>
                            <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </fieldset>
                        <br />
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" OnClick="btnGiris_Click" />
                    </form>
                </div>
                <div class="col-sm-6">
                    <p>
                        <h4>
                            Yeni Üyelik Oluştur
                        </h4>
                    </p>
                    <p>
                        <i>
                            Hızlı ve ücretsiz üye olun, size özel avantajlardan faydalanmaya başlayın!
                        </i>
                    </p>
                    <p>
                        <li type="disc">İndirimlerden yararlanma</li>
                        <li type="disc">Hızlı ödeme ve aynı gün teslim.</li>
                        <li type="disc">%100 güvenli alışveriş.</li>
                    </p>
                    <p>
                        <i>
                            Ayrıca üye olarak en son haberlerden ve oyun çıkışlarından haberdar olabilirsiniz! 
                        </i>
                    </p>
                    <p>
                        <asp:Button ID="Button1" runat="server" Text="Üye Ol" CssClass="btn btn-danger" OnClick="Button1_Click"/> 
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
