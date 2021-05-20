<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="OYUNSATIS.UyeOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">Üye Ol</div>
            <div class="panel-body">
                <div class="col-sm-10">
                    <form>
                        <fieldset class="form-group">
                            <label for="ad">Ad</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAd" ErrorMessage="Adınızı giriniz." ForeColor="#CC3300">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAd" runat="server" CssClass="form-control"></asp:TextBox>
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="soyad">Soyad</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Soyadınızı giriniz." ForeColor="#CC3300">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label for="sifre">Şifre</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSifre" ErrorMessage="Şifrenizi giriniz." ForeColor="#CC3300">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="mail">E-Mail</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="E-mail adresi hatalı." ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMail" ErrorMessage="E-mail giriniz." ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="telefon">Telefon</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTel" ErrorMessage="Telefon numaranızı giriniz." ForeColor="#CC3300">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtTel" runat="server" CssClass="form-control"></asp:TextBox>
                        </fieldset>
                        
                        <div><label>
                         <asp:CheckBox ID="cbSozlesme" runat="server" />
                         <asp:Label ID="Label1" runat="server" Text="Kullanıcı Sözleşmesini Okudum ve Kabul Ediyorum."></asp:Label>   
                        </label>      
                        </div>
                        <br />
                        <asp:Button ID="btnKayit" runat="server" Text="Üye Ol"  CssClass="btn btn-primary" OnClick="btnKayit_Click"/>
                    </form>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
