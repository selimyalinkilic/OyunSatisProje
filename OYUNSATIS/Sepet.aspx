<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="OYUNSATIS.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-md-12">
        <h3>Sepet </h3>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" GridLines="None">
        </asp:GridView>

        <h3> Toplam :  <asp:Label ID="LabelToplam" runat="server" Text=""></asp:Label> </h3>

        <asp:Button ID="Button_Temizle" runat="server" Text="Sepeti Temizle" CssClass="alert-warning" OnClick="Button_Temizle_Click" />
        <br />

        <asp:Button ID="Button_SatinAl" runat="server" Text="SATIN AL" CssClass="alert-success" Height="50px" OnClick="Button_SatinAl_Click" Width="150px" />
    </div>

</asp:Content>

