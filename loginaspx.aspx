﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginaspx.aspx.cs" Inherits="bookShopProject.loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="abc">
                <h1 class="wc">
                    <img src="img/logo.jpg" /><br />
                    WELCOME!
                </h1>
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate"></asp:Login>
            </div>
        </div>
    </form>
</body>
</html>
