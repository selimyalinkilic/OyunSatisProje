<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Bakiyem.aspx.cs" Inherits="OYUNSATIS.Bakiyem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     
     <div class="col-md-12">
        <asp:Label ID="Label8" runat="server" Font-Size="X-Large"
            Text="Bakiyem"></asp:Label>
            <br />
        </div>
        <br />
        <div class="col-md-4">
            <div class="list-group">
                <a href="Uye.aspx" class="list-group-item">Profilim
                </a>
                <a href="UyeDuzenle.aspx" id="hplprflduzenle" class="list-group-item">Profil Düzenle</a>
                <a href="Siparislerim.aspx" class="list-group-item">Siparişlerim</a>
                <a href="Bakiyem.aspx" class="list-group-item  active">Bakiyem</a>
                <asp:LinkButton ID="lnkcikis" runat="server" CssClass="list-group-item" OnClick="lnkcikis_Click" ValidationGroup="Yok">Çıkış</asp:LinkButton>
            </div>
        </div>

      <table border="1" cellpadding="2" cellspacing="2" width="449">

                    <tr>
                         <td>
                             <h3> <asp:Label ID="lbltbakiye" runat="server" Text="Bakiyem"></asp:Label></h3>
                         </td>
                         <td>
                             <h3><asp:Label ID="lblbakiye" runat="server" Text=""></asp:Label> TL </h3>
                         </td>
                     </tr>  
          </table>
        <br />

              <h4> Bakiye Ekle </h4>
               <asp:Button ID="Button1" runat="server" Text="10 TL Ekle" OnClick="Button1_Click" />
               <asp:Button ID="Button2" runat="server" Text="20 TL Ekle" OnClick="Button2_Click" /> 
               <asp:Button ID="Button3" runat="server" Text="50 TL Ekle" OnClick="Button3_Click" /> 
               <asp:Button ID="Button4" runat="server" Text="100 TL Ekle" OnClick="Button4_Click" />
               <asp:Button ID="Button5" runat="server" Text="200 TL Ekle" OnClick="Button5_Click" />
               <asp:Button ID="Button6" runat="server" Text="500 TL Ekle" OnClick="Button6_Click"  />
         </div>
</asp:Content>
