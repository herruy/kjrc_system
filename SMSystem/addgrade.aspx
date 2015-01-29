<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addgrade.aspx.cs" Inherits="SMSstudent.SMSystem.addgrade" %>

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
    <script src="../scripts/My97DatePicker/WdatePicker.js"></script>
    <link href="../scripts/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                &nbsp;<a href="addgrade.aspx">addgrade.aspx</a><div>
                    <table class="table1" border="0" cellspacing="1" width="100%">
                        <tr>
                            <th colspan="5">添加成绩</th>
                         <tr>
                            <td style="height: 17px; font-size: small; width: 56px;">当前用户</td>
                            <td colspan="4" style="height: 17px" width="91%">&nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="6" style="width: 56px">
                                <asp:Label ID="Label8" runat="server" Text="成绩录入" Width="81px"></asp:Label></td>
                            <td style="width: 16px; height: 22px">
                                <asp:Label ID="Label1" runat="server" Text="课程号：" Width="90px"></asp:Label></td>
                            <td colspan="3" style="height: 22px">
                                <asp:Label ID="Label4" runat="server" Width="121px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 16px; height: 20px">
                                <asp:Label ID="Label3" runat="server" Text="课程名称：" Width="86px"></asp:Label></td>
                            <td colspan="3" style="height: 20px">
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="128px" AutoPostBack="true" OnSelectedIndexChanged="LBox2_OnSelectedIndexChanged">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 16px; height: 22px">
                                <asp:Label ID="Label2" runat="server" Text="学号：" Width="73px"></asp:Label></td>
                            <td colspan="3" style="height: 22px">
                                <asp:TextBox ID="TextBox3" runat="server" Width="118px"></asp:TextBox>
                                <asp:Button ID="validate" runat="server" Text="验证" OnClick="validate_Click" ToolTip="点击确认输入学生是否存在!" CssClass="login_btn" /></td>
                        </tr>
                        <tr>
                            <td style="width: 16px;">
                                <asp:Label ID="Label7" runat="server" Text="学生姓名：" Width="84px"></asp:Label></td>
                            <td colspan="3" style="height: 14px">
                                <asp:TextBox ID="TextBox1" runat="server" Width="118px" ReadOnly="True"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 16px; height: 17px">
                                <asp:Label ID="Label10" runat="server" Text="已修学分：" Width="81px"></asp:Label></td>
                            <td colspan="3" style="height: 17px">
                                <asp:Label ID="Label6" runat="server" Width="60px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 16px; height: 32px">
                                <asp:Label ID="Label9" runat="server" Text="成绩：" Width="56px"></asp:Label></td>
                            <td colspan="3" style="height: 32px">
                                <asp:TextBox ID="TextBox2" runat="server" Width="113px" Font-Size="X-Small"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 34px" colspan="5">
                                <span style="width: 3px; height: 21px">&nbsp;&nbsp;</span></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" style="height: 26px">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" CssClass="login_btn" />&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" CssClass="login_btn" />
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Label ID="sms_lbl_note" runat="server" CssClass="text" Width="223px"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
