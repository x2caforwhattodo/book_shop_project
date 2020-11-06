<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="bookShopProject.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="regis.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="regis">
                <h1 class="Reg">
                    <img id="brreg" src="img/logo.jpg" /><br />
                    DANG KY TAI KHOAN
                </h1>
                Ten Dang Nhap   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <asp:TextBox ID="tbTenreg" runat="server" Width="238px"></asp:TextBox>
                <br />
                Mat Khau &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="tbMKreg" runat="server" Width="239px"></asp:TextBox>
                <br />
                Nhap Lai Mat Khau :<asp:TextBox ID="tbNLMK" runat="server" Width="239px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btReg" runat="server" Text="Dang Ky" Width="153px" />
            </div>
        </div>
    </form>
</body>
</html>
