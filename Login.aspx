<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SMSstudent.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台系统</title>
    <link href="style/authority/login_css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
    <script src="scripts/artDialog/artDialog.js"></script>
    <link href="scripts/artDialog/skins/black.css" rel="stylesheet" />
</head>
<body>
    <div id="login_center">
        <div id="login_area">
            <div id="login_box">
                <div id="login_form">
                    <form id="submitForm" runat="server" method="post">
                        <div id="login_tip">
                            <span id="login_err" class="sty_txt2"></span>
                        </div>
                        <div>
                            用户名：<asp:TextBox ID="username" runat="server" CssClass="username"></asp:TextBox>
                        </div>
                        <div>
                            密&nbsp;&nbsp;&nbsp;码：
                             <asp:TextBox ID="mypassword" runat="server" CssClass="pwd" TextMode="Password"></asp:TextBox>
                        </div>
                        <div id="btn_area">
                            <asp:Button ID="btnLogin" runat="server" Text="登  录" CssClass="login_btn" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnReset" runat="server" Text="重  置" CssClass="login_btn" OnClick="btnReset_Click" />
                        </div>
                    </form>
                      <asp:Label ID="message" runat="server" ></asp:Label>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
