<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addDepartment.aspx.cs" Inherits="SMSstudent.SMSystem.addDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../style/authority/btmcss.css" rel="stylesheet" />
    <link href="../style/authority/common_style.css" rel="stylesheet" />
    <script src="../scripts/jquery/jquery-1.7.1.js"></script>
    <link href="../scripts/jGrowl/style/jgrowl-theme.css" rel="stylesheet" />
    <link href="../scripts/jGrowl/style/jquery.jgrowl.css" rel="stylesheet" />
    <script src="../scripts/jGrowl/js/jgrowl-theme.js"></script>
    <script src="../scripts/jGrowl/js/jquery.jgrowl.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div>
                    <table class="table1" border="0" cellspacing="1" width="100%">
                        <tr>
                            <th colspan="5">添加院系信息</th>
                        </tr>
                        <tr>
                            <td style="height: 17px" width="9%">当前用户</td>
                            <td colspan="4" style="height: 17px" width="91%">&nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3">
                                <asp:Label ID="Label10" runat="server" Text="院系资料"></asp:Label></td>
                            <td style="width: 65px; height: 22px">
                                <asp:Label ID="Label1" runat="server" Text="院系代码：" Width="89px"></asp:Label></td>
                            <td style="width: 160px; height: 22px">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="149px"></asp:TextBox></td>
                            <td style="width: 86px; height: 22px">
                                <asp:Label ID="Label2" runat="server" Text="院系名称："></asp:Label></td>
                            <td style="width: 159px; height: 22px">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 65px; height: 22px">
                                <asp:Label ID="Label3" runat="server" Text="系主任："></asp:Label></td>
                            <td style="width: 160px; height: 22px"><asp:TextBox ID="TextBox5" runat="server" CssClass="text" Width="149px"></asp:TextBox></td>
                            <td style="width: 86px; height: 22px"></td>
                            <td style="width: 159px; height: 22px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 65px; height: 17px"></td>
                            <td colspan="3" style="height: 17px"></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" CssClass="login_btn" />
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="放 弃" CssClass="login_btn" />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" CssClass="login_btn" />
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Label ID="sms_lbl_note" runat="server"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
