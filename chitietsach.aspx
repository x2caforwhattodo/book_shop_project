<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="chitietsach.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:DataList ID="DataList1" runat="server"  Width="100%" >
                <ItemTemplate>
                    <div class="left">
                    <asp:Image ID="Image1" runat="server" Width="50%" ImageUrl='<%#"~/img/" + Eval("Hinh") %>' Height="400px" /></div>
                    <div class="right" >
                        
                        <div id="tensach">
                            Tên Sách: <asp:Label ID="Label1" runat="server" Text='<%#Eval("TenSach") %>'></asp:Label>
                        </div>
                        <div id="mota">
                            Mô tả: <asp:Label ID="Label2" runat="server" Text='<%#Eval("MoTa") %>' ></asp:Label>
                        </div>
                        <div class="gia">
                            Giá: <asp:Label ID="Label3" runat="server" Text='<%#Eval("DonGia", "{0:0,0}") %>'></asp:Label>
                        </div>
                    
                    
                        Số Lượng: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Mua Hàng" OnClick="Button1_Click" CommandArgument='<%#Eval("MaSach") %>' />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
