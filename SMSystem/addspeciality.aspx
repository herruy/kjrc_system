<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addspeciality.aspx.cs" Inherits="SMSstudent.SMSystem.addspeciality" %>

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
                <div>
                    <table class="table1" cellspacing="1" width="100%">
                        <tr>
                            <th colspan="5">添加专业</th>
                        </tr>

                        <tr>
                            <td style="width: 77px; height: 17px">
                                <asp:Label ID="Label5" runat="server" Text="当前专业：" Font-Size="Small" Width="82px"></asp:Label></td>
                            <td colspan="4" style="height: 17px" width="91%">&nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="width: 77px">&nbsp;<asp:Label ID="Label8" runat="server" Text="专业资料：" Width="80px" Font-Size="Small"></asp:Label></td>
                            <td style="width: 65px">&nbsp;<asp:Label ID="Label3" runat="server" Height="1px" Text="专业代码：" Width="86px" Font-Size="Small"></asp:Label></td>
                            <td style="width: 125px">
                                <asp:Label ID="LabSpeidF" runat="server" Width="2px" Font-Size="Small"></asp:Label><asp:TextBox ID="TextBox7" runat="server" CssClass="text" Width="138px" Font-Size="Small"></asp:TextBox></td>
                            <td style="width: 86px">
                                <asp:Label ID="Label9" runat="server" Text="所属院系：" Font-Size="Small"></asp:Label></td>
                            <td style="width: 159px">
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="96px" OnSelectedIndexChanged="DDL2SelectedChanged" AutoPostBack="true" Font-Size="X-Small">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 65px; height: 10px">&nbsp;<asp:Label ID="Label7" runat="server" Text="专业名称：" Font-Size="Small" Width="85px"></asp:Label></td>
                            <td style="width: 125px; height: 10px">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="text" Width="139px" Font-Size="Small"></asp:TextBox></td>
                            <td style="width: 86px; height: 10px">
                                <asp:Label ID="Label1" runat="server" Text="院系代码：" Width="90px" Font-Size="Small"></asp:Label></td>
                            <td style="width: 159px; height: 10px">
                                <asp:Label ID="Labdar" runat="server" Width="80px" Font-Size="Small"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 17px" colspan="4"></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" Font-Size="Small" CssClass="login_btn" />
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="放 弃" Font-Size="Small" CssClass="login_btn" />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" Font-Size="Small" CssClass="login_btn" />
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Label ID="sms_lbl_note" runat="server" Font-Size="Small"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
