<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="OYUNSATIS.Admin.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="col-md-5">   
     <fieldset class="form-group col-md-12">
        <label>Yönetici Adı</label>
        <asp:TextBox ID="txtAdı" runat="server" CssClass="form-control" />
    </fieldset>
    <fieldset class="form-group col-md-12">
        <label>Yönetici Soyad</label>
        <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control" />
    </fieldset>
    <fieldset class="form-group col-md-12">
        <label>EPosta</label>
        <asp:TextBox ID="txtMail" TextMode="Email" runat="server" CssClass="form-control" ReadOnly="True" />
    </fieldset>
    
    <center>
				
				<asp:Button ID="btnGuncelle" runat="server" CssClass="btn btn-danger" Text="Güncelle" OnClick="btnGuncelle_Click" />
			</center>
        </div>
</asp:Content>
