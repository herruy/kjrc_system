<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addlogin.aspx.cs" Inherits="SMSstudent.SMSystem.addlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../style/authority/basic_layout.css" rel="stylesheet" />
    <link href="../style/authority/common_style.css" rel="stylesheet" />
    <link href="../style/authority/btmcss.css" rel="stylesheet" />
    <script src="../scripts/artDialog/artDialog.js"></script>
    <link href="../scripts/artDialog/skins/black.css" rel="stylesheet" />
    <style>

        .auto-style1 {
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <table class="table" cellspacing="1" cellpadding="1" align="center" border="0" style="width: 70%">
                <tr style="background-color: lightgrey">
                    <th colspan="2">添加管理员</th>
                </tr>
                <tr>
                    <td align="right" height="30" class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="用户名："></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width: 399px">
                        <asp:TextBox ID="txtuser" Width="155" runat="server" Font-Size="X-Small" CssClass="username"></asp:TextBox>

                        <asp:CustomValidator ID="cuvuser" runat="server" ControlToValidate="txtuser" ErrorMessage="用户名已存在！" Display="Dynamic" Font-Size="Small">*</asp:CustomValidator></td>
                </tr>
                <tr>
                    <td align="right" height="30" class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="密码："></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width: 399px">
                        <asp:TextBox ID="txtpwd" Width="155" runat="server" TextMode="Password" Font-Size="X-Small" CssClass="username"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revpwd" runat="server" ErrorMessage="密码长度是6-15，由英文字母（a-z/A-Z），数字，下划线组成" ControlToValidate="txtpwd"
                            ValidationExpression="[a-zA-Z0-9_]{6,15}$" Font-Size="Small">*</asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td align="right" height="30" class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="确认密码："></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width: 399px">
                        <asp:TextBox ID="txtpwdRepeat" Width="155" runat="server" TextMode="Password" Font-Size="X-Small" CssClass="username"></asp:TextBox>
                        <asp:CompareValidator ID="cvpwd" runat="server" ControlToValidate="txtpwdRepeat" ControlToCompare="txtpwd"
                            ErrorMessage="*" Font-Size="Small"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td align="right" height="30" class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="用户类型："></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width: 399px">
                        <asp:DropDownList ID="ddltype" runat="server" CssClass="username" Font-Size="Medium" Height="30px" Width="160px">
                            <asp:ListItem Value="">&lt;--请选择--&gt;</asp:ListItem>
                            <asp:ListItem Value="超级管理员">超级管理员</asp:ListItem>
                            <asp:ListItem Value="普通管理员">普通管理员</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" height="32">
                        <asp:Button ID="btninput" runat="server" Text="添加" OnClick="btninput_Click" Font-Size="X-Small" CssClass="login_btn"></asp:Button>&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" Text="返回" CssClass="login_btn" /></td>
                </tr>
            </table>
            <center> 
                <div style="text-align:center;width:500px">
                       <asp:ValidationSummary ID="vsShow" runat="server" Height="80px" Width="429px" HeaderText="错误信息：" Font-Size="X-Small"></asp:ValidationSummary>
               </div>
            </center>
        </div>
    </form>
</body>
</html>
