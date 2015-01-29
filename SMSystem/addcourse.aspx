<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addcourse.aspx.cs" Inherits="SMSstudent.SMSystem.addcourse" %>

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
                <table class="table1" width="100%">
                    <tr>
                        <th colspan="5" >添加课程</th>
                    </tr>
                    <tr>
                        <td style="height: 17px; font-size: small;" width="9%">当前用户</td>
                        <td colspan="4" style="height: 17px" width="91%">&nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="6">
                            <asp:Label ID="Label8" runat="server" Text="课程信息" Font-Size="Small"></asp:Label></td>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="课程号：" Width="90px" Font-Size="Small"></asp:Label></td>
                        <td colspan="3" class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="125px" Font-Size="Small"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 20px">
                            <asp:Label ID="Label3" runat="server" Text="课程名称：" Width="86px" Font-Size="Small"></asp:Label></td>
                        <td colspan="3" style="height: 20px">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="text" Width="127px" Font-Size="Small"></asp:TextBox>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 22px">
                            <asp:Label ID="Label4" runat="server" Text="课程类别：" Width="84px" Font-Size="Small"></asp:Label></td>
                        <td colspan="3" style="height: 22px">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="text" Width="89px" Font-Size="Small">
                                <asp:ListItem Value="002">专业基础课</asp:ListItem>
                                <asp:ListItem Value="001">公共课</asp:ListItem>
                                <asp:ListItem Value="003">专业课</asp:ListItem>
                                <asp:ListItem Value="004">专业选修课</asp:ListItem>
                                <asp:ListItem Value="005">校级必修课</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 18px">
                            <asp:Label ID="Label10" runat="server" Text="学分：" Width="53px" Font-Size="Small"></asp:Label></td>
                        <td style="height: 18px" colspan="3">
                            <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Small">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 17px">
                            <asp:Label ID="Label7" runat="server" Text="总学时：" Width="68px" Font-Size="Small"></asp:Label></td>
                        <td colspan="3" style="height: 17px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="text" Width="125px" Font-Size="Small"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 17px; height: 17px">
                            <asp:Label
                                ID="Label2" runat="server" Text="周学时：" Width="73px" Font-Size="Small"></asp:Label></td>
                        <td colspan="3" style="height: 17px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Small">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="height: 69px">
                            <asp:Label ID="Label5" runat="server" Text="备注：" Width="73px" Font-Size="Small"></asp:Label></td>
                        <td colspan="4" style="height: 69px">
                            <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                                CssClass="text" Height="102px" TextMode="MultiLine" Width="669px" Font-Size="Small"></asp:TextBox>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 26px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" Font-Size="Small" CssClass="login_btn" />&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" Font-Size="Small" CssClass="login_btn" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="sms_lbl_note" runat="server" CssClass="text" Width="223px" Font-Size="X-Small"></asp:Label>

        </div>
    </form>
</body>
</html>
