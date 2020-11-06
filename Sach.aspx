<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>       
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
                    <ul>
                        <li><asp:HyperLink ID="hltrangchu" runat="server" NavigateUrl="~/trangchu.aspx">Trang Chủ</asp:HyperLink></li>
                        <li><asp:HyperLink ID="hlsach" runat="server" NavigateUrl="~/Sach.aspx">Sách</asp:HyperLink></li>
                        <li><asp:ImageButton ID="imgLogo" runat="server" ImageUrl="~/image/logo.jpg" /></li>
                        <li><asp:LinkButton ID="lbGioiThieu" runat="server">Gioi Thieu</asp:LinkButton></li>
                        <li><asp:HyperLink ID="hpTinTuc" runat="server" NavigateUrl="https://nxbkimdong.com.vn/tin-tuc/hoat-dong">Tin tuc</asp:HyperLink></li>

                    </ul>
                </div>
            </div>
            
            
            
        
            <div class="thumucsach">

                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CssClass="auto-style1" Width="100%"  >
                    <ItemTemplate>
                        <div class="motsach">
                            
                            <asp:Image ID="img1" runat="server" ImageUrl='<%#"~/img/" + Eval("Hinh") %>'  Width="200px" Height="200px"  />
                            <div class="tensach">
                            <asp:Label ID="lbl1" runat="server" Text='<%# Eval("TenSach") %>' ></asp:Label>
                            </div>
                            
                            <div class="gia">
                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("DonGia", "{0:0,0}") %>'></asp:Label>
                            </div>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                        
                    </ItemTemplate>
                </asp:DataList>
<cc1:CollectionPager ID="CollectionPager1" runat="server"></cc1:CollectionPager>
            </div>
            
            
           </div> 
    </form>
</body>
</html>
