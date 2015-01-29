<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherlist.aspx.cs" Inherits="SMSstudent.SMSystem.teacherlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../style/authority/basic_layout.css" rel="stylesheet" />
    <link href="../style/authority/common_style.css" rel="stylesheet" />
    <link href="../style/authority/btmcss.css" rel="stylesheet" />
    <script src="../scripts/jquery/jquery-1.7.1.js"></script>
    <link href="../scripts/jGrowl/style/jgrowl-theme.css" rel="stylesheet" />
    <link href="../scripts/jGrowl/style/jquery.jgrowl.css" rel="stylesheet" />
    <script src="../scripts/jGrowl/js/jgrowl-theme.js"></script>
    <script src="../scripts/jGrowl/js/jquery.jgrowl.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 145px;
        }
        .auto-style2 {
            height: 69px;
            width: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
                <table class="table1" border="0" cellspacing="1" width="100%">
                    <tr>
                        <th colspan="5">修改教师信息</th>
                    </tr>
                    <tr>
                        <td colspan="5">当前用户</td>
                    </tr>
                    <tr>
                        <td rowspan="5" class="auto-style1">教师资料 &nbsp;&nbsp;</td>
                        <td style="width: 65px; height: 22px">
                            <asp:Label ID="Label1" runat="server" Text="教师号：" Width="62px"></asp:Label></td>
                        <td style="width: 166px; height: 22px">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="145px"></asp:TextBox></td>
                        <td style="width: 86px; height: 22px">
                            <asp:Label ID="Label2" runat="server" Text="教师姓名:"></asp:Label></td>
                        <td style="width: 173px; height: 22px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 65px; height: 20px">
                            <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                        <td style="width: 166px; height: 20px">&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList></td>
                        <td style="width: 86px; height: 20px">
                            <asp:Label ID="Label5" runat="server" Text="所在院系："></asp:Label></td>
                        <td style="width: 173px; height: 20px">
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="116px" Height="16px">
                            </asp:DropDownList>
                            &nbsp;
                            <asp:Label ID="lbl3" runat="server" Font-Size="X-Small" ForeColor="#003366"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 65px; height: 22px">
                            <asp:Label ID="Label4" runat="server" Text="职称："></asp:Label></td>
                        <td style="width: 166px; height: 22px"><asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>讲师</asp:ListItem>
                            <asp:ListItem>教授</asp:ListItem>
                            <asp:ListItem>副教授</asp:ListItem>
                            <asp:ListItem>助教</asp:ListItem>
                            <asp:ListItem>辅导员</asp:ListItem>
                            <asp:ListItem>一般</asp:ListItem>
                        </asp:DropDownList></td>
                        <td style="width: 86px; height: 22px">
                            <asp:Label ID="Label6" runat="server" Text="联系电话："></asp:Label></td>
                        <td style="width: 173px; height: 22px">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 65px; height: 18px">&nbsp;<asp:Label ID="Label10" runat="server" Text="家庭住址："></asp:Label></td>
                        <td style="width: 166px; height: 18px">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox></td>
                        <td style="width: 86px; height: 18px">&nbsp;<asp:Label ID="Label7" runat="server" Text="密码："></asp:Label></td>
                        <td style="width: 173px; height: 18px">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 65px; height: 17px"></td>
                        <td style="width: 166px; height: 17px"></td>
                        <td style="width: 86px; height: 17px"></td>
                        <td style="width: 173px; height: 17px"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">备注</td>
                        <td colspan="4" style="height: 69px">
                            <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                                CssClass="text" Height="102px" TextMode="MultiLine" Width="669px"></asp:TextBox></span></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 26px">
                            <asp:Button ID="Button1" runat="server" Text="保 存" CssClass="login_btn" OnClick="Button1_Click" />
                            <asp:Button ID="Button6" runat="server" Text="放 弃" CssClass="login_btn" OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" Text="返 回" CssClass="login_btn" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
            </div>

        </div>
        <asp:Label ID="sms_lbl_note" runat="server" Width="223px"></asp:Label>
    </form>
</body>
</html>
