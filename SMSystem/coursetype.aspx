<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coursetype.aspx.cs" Inherits="SMSstudent.SMSystem.coursetype" %>

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
                <table style="width:100%">
                    <tr>
                        <td height="1" colspan="3" align="center" background="../images/common/top_bg.GIF">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="89px" CssClass="username" Height="25px">
                            </asp:DropDownList>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" CssClass="login_btn" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" CssClass="login_btn" />
                            &nbsp;
                        <asp:LinkButton ID="LinkButtonADD" runat="server" Font-Underline="False"
                            OnClick="LinkButtonADD_Click" BorderColor="White" BorderStyle="Dotted" ForeColor="White">『添加』</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" style="height: 150px" valign="top">
                            <asp:Repeater ID="RepeaterD" runat="server" EnableTheming="True" OnItemCommand="RepeaterIC">
                                <ItemTemplate>
                                    <table class="table" border="0" cellspacing="1" width="100%">
                                        <tr>
                                            <td rowspan="0" align="center">&nbsp;<b><asp:Label ID="Label8" runat="server" Text="课程类别资料" /></b>                                        </b></td>
                                            <td rowspan="2">&nbsp;<asp:Label ID="Label3" runat="server"  Text="课程类别代码："></asp:Label></td>
                                            <td rowspan="2">
                                                <asp:Label ID="LabDepid" runat="server"   Text='<%# Eval("coursetypeid") %>'
                                                    Width="60px"></asp:Label>
                                                <asp:TextBox ID="TxtDepid" runat="server" Text='<%# Eval("coursetypeid") %>'
                                                    Visible="false"></asp:TextBox>
                                            </td>
                                            <td rowspan="2">
                                                <asp:Label ID="Label9" runat="server"  Text="课程类别名称："></asp:Label>
                                            </td>
                                            <td rowspan="2">
                                                <asp:Label ID="LabDepname" runat="server" Text='<%# Eval("typename") %>'
                                                    Width="80px"></asp:Label>
                                                <asp:TextBox ID="TxtDepname" runat="server" Text='<%# Eval("typename") %>'
                                                    Visible="false" ></asp:TextBox>
                                            </td>
                                            <td rowspan="2" align="center" class="abtn">
                                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="edit" Font-Size="Small">编辑</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" Font-Size="Small"
                                                    Visible="false">更新</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cancel" Font-Size="Small"
                                                    Visible="false">取消</asp:LinkButton>
                                            </td>
                                            <td rowspan="2" align="center" class="abtn">

                                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="delete" Font-Size="Small">删除</asp:LinkButton>

                                            </td>
                                        </tr>


                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="3" align="right"></td>
                    </tr>
                </table>
            </div>

        </div>
        <asp:Label ID="sms_lbl_note" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
