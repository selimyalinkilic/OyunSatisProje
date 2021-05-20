<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OYUNSATIS.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/signin.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <form class="form-signin" runat="server">
            <h3 class="form-signin-heading">Lütfen Giriş Yapınız</h3>
            <label for="inputEmail" class="sr-only">Email Adresi</label>
            <asp:TextBox ID="inputEmail" CssClass="form-control" placeholder="Email Adresi" runat="server" required autofocus />
            <label for="inputPassword" class="sr-only">Şifre</label>
            <asp:TextBox ID="inputPassword" CssClass="form-control" placeholder="Şifre" runat="server" required TextMode="Password" />
            <asp:Button runat="server" ID="btnGiris" CssClass="btn btn-lg btn-primary btn-block" Text="Giriş" OnClick="btnGiris_Click"  />
        </form>
    </div>
</body>
</html>
