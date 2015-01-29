<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editstu.aspx.cs" Inherits="SMSstudent.SMSystem.Editstu" %>

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
    <style type="text/css">
        .auto-style1 {
            height: 17px;
            width: 13%;
        }
        .auto-style2 {
            width: 13%;
        }
        .auto-style3 {
            height: 69px;
            width: 13%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <table  class="table1" width="100%">
               <tr>
                   <th colspan="5" >学生信息编辑</th>
               </tr>
                 <tr>
                    <td class="auto-style1">当前用户</td>
                    <td  colspan="4" width="91%" style="height: 17px">&nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td  rowspan="6" class="auto-style2">学生资料 &nbsp;&nbsp;</td>
                    <td  style="width: 65px; height: 22px">
                        <asp:Label ID="Label1" runat="server" Text="学号：" Width="62px"></asp:Label></td>
                    <td  style="width: 160px; height: 22px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="90px" CssClass="text"></asp:TextBox></td>
                    <td  style="width: 86px; height: 22px">
                        <asp:Label ID="Label2" runat="server" Text="学生姓名:"></asp:Label></td>
                    <td  style="width: 159px; height: 22px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td  style="width: 65px; height: 22px;">
                        <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                    <td  style="width: 160px; height: 22px;">&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                        RepeatLayout="Flow" Width="74px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList></td>
                    <td  style="width: 86px; height: 22px;">
                        <asp:Label ID="Label5" runat="server" Text="所在班级："></asp:Label></td>
                    <td  style="width: 159px; height: 22px;"><asp:DropDownList ID="DropDownList1" runat="server" Width="124px" Height="16px">
                    </asp:DropDownList></td>
                </tr>
                <tr>
                    <td  style="width: 65px; height: 22px;">
                        <asp:Label ID="Label4" runat="server" Text="出生日期："></asp:Label></td>
                    <td  style="width: 160px; height: 22px;">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="Wdate" Width="146px"  onFocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})"></asp:TextBox></td>
                    <td  style="width: 86px; height: 22px;">
                        <asp:Label ID="Label6" runat="server" Text="联系电话："></asp:Label></td>
                    <td  style="width: 159px; height: 22px;">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td  style="width: 65px; height: 18px">
                        <asp:Label ID="Label8" runat="server" Text="已修学分："></asp:Label></td>
                    <td  style="width: 160px; height: 18px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="text" Width="146px" ReadOnly="True"></asp:TextBox></td>
                    <td  style="width: 86px; height: 18px">
                        <asp:Label ID="Label9" runat="server" Text="入学时间："></asp:Label></td>
                    <td  style="width: 159px; height: 18px"><asp:DropDownList ID="DropDownList2" runat="server" Width="59px">
                    </asp:DropDownList></td>
                </tr>
                <tr>
                    <td  style="width: 65px; height: 10px;">
                        <asp:Label ID="Label7" runat="server" Text="密码："></asp:Label></td>
                    <td  style="width: 160px; height: 10px;">
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="text" TextMode="Password" Width="145px"></asp:TextBox></td>
                    <td  style="width: 86px; height: 10px;"></td>
                    <td  style="width: 159px; height: 10px;"></td>
                </tr>
                <tr>
                    <td  style="width: 65px; height: 17px">
                        <asp:Label ID="Label10" runat="server" Text="家庭住址："></asp:Label></td>
                    <td  colspan="3" style="height: 17px">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="text" Width="574px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">备注</td>
                    <td  colspan="4" style="height: 69px">
                        <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                            CssClass="text" Height="102px" TextMode="MultiLine" Width="672px"></asp:TextBox></span></td>
                </tr>
                <tr>
                    <td align="center"  colspan="5">
                        <asp:Button ID="Button1" runat="server" Text="保 存" OnClick="Button1_Click" CssClass="login_btn" />
                        <asp:Button ID="Button6" runat="server" Text="放 弃" OnClick="Button6_Click" CssClass="login_btn" />
                        <asp:Button ID="Button3" runat="server" Text="返 回" OnClick="Button3_Click" CssClass="login_btn" />

                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="sms_lbl_note" runat="server"></asp:Label>
    </form>
</body>
</html>
