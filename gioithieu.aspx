<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="bookShopProject.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="gioithieu.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top">
                <div class="search">                                       
                    <asp:TextBox ID="txtTimKiem" runat="server" placeholder="Tim kiem ..."></asp:TextBox>
                    <asp:Button ID="btTimKiem" runat="server" Text="Tim Kiem" />
                </div>
                <div class="login">
                    
                </div>
            </div>
            <div class="container">
                <div class="menu">
                    <ul class="nd">
                        <li><asp:LinkButton ID="lbTrangChu" runat="server">TRANG CHỦ</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbSach" runat="server">SÁCH</asp:LinkButton></li>
                        <li><asp:ImageButton ID="imgLogo" runat="server" ImageUrl="~/img/logo.jpg" /></li>
                        <li><asp:LinkButton ID="lbGioiThieu" runat="server">GIỚI THIỆU</asp:LinkButton></li>
                        <li><asp:HyperLink ID="hpTinTuc" runat="server" NavigateUrl="https://nxbkimdong.com.vn/tin-tuc/hoat-dong">TIN TỨC</asp:HyperLink></li>
                    </ul>
                </div>
            </div>
            <div class="banner">
                <asp:ImageButton ID="imgBanner1" runat="server" ImageUrl="~/img/bnhome.jpg"/>
                <asp:ImageButton ID="imgBanner2" runat="server" ImageUrl="~/img/tapchitgtt.jpg" />
            </div>

        
    </form>
</body>
</html>
