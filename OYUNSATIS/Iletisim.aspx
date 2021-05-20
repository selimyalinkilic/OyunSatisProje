<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="OYUNSATIS.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <h3>İletişim 
        </h3>
        <hr />
        <div class="col-md-6">
            <h4>Bize Ulaşın
            </h4>
            <div>
                <p><i class="fa fa-map-marker"></i> <span>Beylikdüzü</span> İstanbul,Türkiye</p>
            </div>
            <div>

                <p><i class="fa fa-phone"></i> 0212 658 82 39</p>
            </div>
            <div>
                <p><i class="fa fa-envelope"></i> <a href="mailto:bilgi@oyunsatis.com">bilgi@oyunsatis.com</a></p>
            </div>
            <br />
            <form action="/" method="">
                <fieldset class="form-group">
                    <label for="kul_adi">E-Mail</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email adresinizi giriniz." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Mail hatalı." ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </fieldset>
                <fieldset class="form-group">
                    <label for="sifre">Konu</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtKonu" ErrorMessage="Konuyu giriniz." ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtKonu" runat="server" CssClass="form-control"></asp:TextBox>
                </fieldset>
                <fieldset class="form-group">
                    <label for="sifre">Mesajınız</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMesaj" ErrorMessage="Mesajınızı giriniz." ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtMesaj" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                </fieldset>
                <asp:Button ID="btnGonder" runat="server" Text="Mesajı Gönder" CssClass="btn btn-primary" OnClick="btnGonder_Click" />
            </form>
        </div>
        <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48187.216123717684!2d28.611952417716402!3d40.988027491568296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b55fc19deb0b3b%3A0xdf4ea093f30983c6!2zQmV5bGlrZMO8esO8L8Swc3RhbmJ1bA!5e0!3m2!1str!2str!4v1465058280204" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </div>
    </div>
</asp:Content>
