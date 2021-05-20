<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTasarim.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="OYUNSATIS.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Oyun Satış | Detay</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-sm-9">
                    <h3>
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="urun_id" DataSourceID="SqlDataSource1"> 
                        <ItemTemplate>

                            <asp:Label ID="urun_idlabel" runat="server" Text='<%# Bind("urun_id") %>' Visible="false"></asp:Label>
                            <asp:Label ID="urun_adLabel" runat="server" Text='<%# Bind("urun_ad") %>' />
                            
                        </ItemTemplate>
                        </asp:FormView>  

                        <asp:Label ID="Label_ad" runat="server" Visible="false" Text='<%# Bind("urun_ad") %>'></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urun] WHERE ([urun_id] = ?)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="urun_id" QueryStringField="urun" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                    </h3>   
                </div> 
        <div class="col-md-8">
          <div class="row carousel-holder">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("urun_resim1") %>'/>                             
                          </ItemTemplate>
                          </asp:FormView>
                    </div>
                    <div class="item">
                        <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("urun_resim2") %>'/>                             
                          </ItemTemplate>
                          </asp:FormView>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
      </div>
        </div>
        <div class="col-md-4"> 
          <div class="panel panel-default">
            <div class="panel-body">
                <a href="#" class="thumbnail">
                    
                    <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("urun_resim") %>'/>                             
                          </ItemTemplate>
                          </asp:FormView>
                </a>
                <hr/>
                <div class="col-sm-9">
                  <table cellpadding="5" cellspacing="5">
                    <tr>
                      <td>Kategori &nbsp;&nbsp;:</td>
                      <td>
                          <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                              <asp:Label ID="kategori_adLabel" runat="server" Text='<%# Bind("kategori_ad") %>' />                             
                          </ItemTemplate>
                          </asp:FormView>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select * from urun u inner join kategori k on k.kategori_id = u.urun_kategori where urun_id = ?">
                              <SelectParameters>
                                  <asp:QueryStringParameter Name="?" QueryStringField="urun" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </td>
                    </tr>
                    <tr>
                      <td>Fiyat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                      <td>
                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="urun_id" DataSourceID="SqlDataSource1"> 
                        <ItemTemplate>
                            <asp:Label ID="urun_adLabel" runat="server" Text='<%# Bind("urun_fiyat") %>' /> TL   
                        </ItemTemplate>
                        </asp:FormView>  

                          
                        </td>
                    </tr>
                    <tr>
                      <td>Tarih &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                      <td><asp:FormView ID="FormView3" runat="server" DataKeyNames="urun_id" DataSourceID="SqlDataSource1"> 
                        <ItemTemplate>
                            <asp:Label ID="urun_adLabel" runat="server" Text='<%# Bind("urun_tarih","{0:dd.MM.yyyy}") %>' />   
                        </ItemTemplate>
                        </asp:FormView>  </td>
                    </tr>
                    <tr>
                      <td>Yapımcı &nbsp;&nbsp;&nbsp;:</td>
                      <td>

                          <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource3">
                          <ItemTemplate>
                              <asp:Label ID="yapimci_adLabel" runat="server" Text='<%# Bind("yapimci_ad") %>' />
                              <br />
                          </ItemTemplate>
                          </asp:FormView>

                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select yapimci_ad from urun u inner join yapimci y on y.yapimci_id = u.urun_yapimci where urun_id = ?">
                              <SelectParameters>
                                  <asp:QueryStringParameter Name="?" QueryStringField="urun" />
                              </SelectParameters>
                          </asp:SqlDataSource>

                      </td>
                    </tr>
                      <tr>
                                <td>Adet:</td>
                                <td>
                                    <asp:DropDownList ID="dllAdet" CssClass="form-control" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                    <tr>
                      <td><br/></td>
                      <td><br/></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td>
                          <asp:Button ID="Button_SepetEkle" runat="server" class="btn btn-danger" Text="Sepete Ekle" OnClick="Button_SepetEkle_Click" />
                      </td>
                    </tr>
                  </table>        
                </div> 
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Oyun Hakkında</h3>
            </div>
          <div class="panel-body">
            <asp:FormView ID="FormView6" runat="server" DataKeyNames="urun_id" DataSourceID="SqlDataSource1"> 
                        <ItemTemplate>
                            
                            <asp:Label ID="urun_adLabel" runat="server" Text='<%# Bind("urun_aciklama") %>' />
                            
                        </ItemTemplate>
                        </asp:FormView>  
          </div>
        </div>
      </div>
    </div>
</asp:Content>
