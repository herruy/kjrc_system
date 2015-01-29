<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addclass.aspx.cs" Inherits="SMSstudent.SMSystem.addclass" %>

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
        <table class="table1" border="0" cellspacing="1" width="100%">
            <tr>
                <th colspan="5"">添加班级信息</th>
           </tr>
            <tr>
                <td style="height: 17px; font-size: small;" width="9%">当前用户</td>
                <td colspan="4" style="height: 17px" width="91%">&nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td rowspan="6">
                    <asp:Label ID="Label10" runat="server" Text="班级资料" Width="86px" Font-Size="Small"></asp:Label>
                    &nbsp;&nbsp;</td>
                <td style="width: 65px; height: 22px">
                    <asp:Label ID="Label2" runat="server" Text="班号：" Width="62px" Font-Size="Small"></asp:Label></td>
                <td style="width: 160px; height: 22px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="115px" Font-Size="Small"></asp:TextBox></td>
                <td colspan="2" rowspan="5">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 65px; height: 22px">
                    <asp:Label ID="Label4" runat="server" Text="班级名称：" Width="88px" Font-Size="Small"></asp:Label></td>
                <td style="width: 160px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="115px" Font-Size="Small"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 65px; height: 22px">
                    <asp:Label ID="Label7" runat="server" Text="所属专业：" Width="82px" Font-Size="Small"></asp:Label></td>
                <td style="width: 160px; height: 22px">
                    <asp:Label ID="Label5" runat="server" Width="69px" Font-Size="Small"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 65px; height: 18px">
                    <asp:Label ID="Label3" runat="server" Text="专业名称：" Width="91px" Font-Size="Small"></asp:Label></td>
                <td style="width: 160px; height: 18px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="103px" OnSelectedIndexChanged="DDL1selsctedchange" AutoPostBack="true" Font-Size="Small">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 65px; height: 10px">
                    <asp:Label ID="Label6" runat="server" Text="入学年份：" Width="89px" Font-Size="Small"></asp:Label></td>
                <td style="width: 160px; height: 10px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="61px" Font-Size="Small">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 65px; height: 16px">
                    <asp:Label ID="Label1" runat="server" Text="班长：" Font-Size="Small"></asp:Label></td>
                <td colspan="3" style="height: 16px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="93px" Font-Size="Small" Enabled="False" ReadOnly="True"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Height="21px" OnClick="Button2_Click" Text="查验"
                        Width="40px" Font-Size="X-Small" Enabled="False" />
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="message2" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td style="height: 69px"></td>
                <td colspan="4" style="height: 69px">
                    <span style="width: 3px; height: 21px">&nbsp;</span></td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" CssClass="login_btn" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="放 弃" CssClass="login_btn" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" CssClass="login_btn" />
                </td>
            </tr>
        </table>
        <asp:Label ID="sms_lbl_note" runat="server" Font-Size="Small"></asp:Label>
        <asp:Label ID="message" runat="server" Width="114px" Font-Size="Small"></asp:Label>
    </form>
</body>
</html>
