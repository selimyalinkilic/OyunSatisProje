<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="UyeDuzenle.aspx.cs" Inherits="OYUNSATIS.UyeDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="col-md-12">
            <asp:Label ID="Label8" runat="server" Font-Size="X-Large"
                Text="Profil Güncelle"></asp:Label>
            <br />
        </div>
        <br />
        <div class="col-md-4">
            <div class="list-group">
                <a href="Uye.aspx" class="list-group-item">Profilim
                </a>
                <a href="UyeDuzenle.aspx" id="hplprflduzenle" class="list-group-item active">Profil Düzenle</a>
                <a href="Siparislerim.aspx" class="list-group-item">Siparişlerim</a>
                <a href="Bakiyem.aspx" class="list-group-item">Bakiyem</a>
                <asp:LinkButton ID="lnkcikis" runat="server" CssClass="list-group-item" OnClick="lnkcikis_Click" ValidationGroup="Yok">Çıkış</asp:LinkButton>
            </div>
        </div>
        <div class="col-md-8">
            <table class="table" width="450">
                <tr>
                    <td>
                        <asp:Label ID="lbltad" runat="server" Text="Ad"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblad" runat="server" CssClass="form-control"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltsoyad" runat="server" Text="Soyad"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblsoyad" runat="server" CssClass="form-control"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblemail" runat="server" CssClass="form-control"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltulke" runat="server" Text="Ülke : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtulke" runat="server" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtulke" ErrorMessage="Ülkenizi giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Şehir : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsehir" runat="server" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtsehir" ErrorMessage="Şehiri giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="İlçe : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtilce" runat="server" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsehir" ErrorMessage="İlçenizi giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Adres : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtadres" runat="server" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtadres" ErrorMessage="Adresinizi giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Telefon : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttel" runat="server" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttel" ErrorMessage="Telefon giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Şifre : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsif" runat="server" TextMode="Password" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsif" ErrorMessage="Şifre giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtsif" ControlToValidate="txtsif2" ErrorMessage="Şifreler aynı değil." SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Şifre Tekrar : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsif2" runat="server" TextMode="Password" Width="277px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsif2" ErrorMessage="Şifre tekrarı giriniz." ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="button_Guncelle" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="button_Guncelle_Click" Width="150px" />
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
        </div>




    </div>
</asp:Content>
