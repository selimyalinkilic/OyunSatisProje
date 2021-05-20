<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OyunEkle.aspx.cs" Inherits="OYUNSATIS.Admin.OyunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
        <fieldset class="form-group col-md-6">
            <label>Kategori</label>
            <asp:DropDownList ID="ddlKategori" runat="server" CssClass="form-control"></asp:DropDownList>
        </fieldset>
        <fieldset class="form-group col-md-6">
            <label>Yapımcı</label>
            <asp:DropDownList ID="ddlYapimci" runat="server" CssClass="form-control"></asp:DropDownList>
        </fieldset>
        <fieldset class="form-group col-md-12">
            <label>Oyun Adı</label>
            <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Oyun Adı" />
        </fieldset>
        <fieldset class="form-group col-md-12">
            <label>Fiyatı</label>
            <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Fiyat" />
        </fieldset>
        <fieldset class="form-group col-md-12">
            <label>Oyun Tarihi:</label>
            <asp:TextBox ID="txtTarih" runat="server" CssClass="form-control" placeholder="Fiyat" />
        </fieldset>
        <fieldset class="form-group col-md-6">
            <label>Stok</label>
            <asp:DropDownList ID="ddlStok" CssClass="form-control" runat="server">
                <asp:ListItem>Yok</asp:ListItem>
                <asp:ListItem>Var</asp:ListItem>
            </asp:DropDownList>
        </fieldset>
        <fieldset class="form-group col-md-6">
            <label>Ön Sipariş</label>
            <asp:DropDownList ID="ddlOnSiparis" runat="server" CssClass="form-control">
                <asp:ListItem>Yok</asp:ListItem>
                <asp:ListItem>Var</asp:ListItem>
            </asp:DropDownList>
        </fieldset>
        <fieldset class="form-group col-md-12">
            <label>Oyun Açıklama</label>
            <asp:TextBox ID="txtAciklama" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="10" Columns="50" style="resize:none;"/>
        </fieldset>
        <div class="container">
            <fieldset class="form-group col-md-4">
                <label>Resim 1 320x150</label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </fieldset>
            <fieldset class="form-group col-md-4">
                <label>Resim 2 800x400</label>
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
            </fieldset>
            <fieldset class="form-group col-md-4">
                <label>Resim 3 800x400</label>
                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
            </fieldset>
        </div>
        <center>
				<asp:Button ID="btnEkle" runat="server" CssClass="btn btn-danger" Text="Ekle" OnClick="btnEkle_Click" />
			</center>
        <br />
</asp:Content>
