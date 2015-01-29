<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="SMSstudent.SMSystem.Department" %>

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
            <table class="table2" cellspacing="0">
                  <tr>
                    <td style="background-image: url(../images/common/top_bg.gif); text-align:center" colspan="3" >
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Small" Width="89px"  Height="26px" CssClass="username">
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server"  Text="查询" OnClick="Button1_Click" CssClass="login_btn"/>
                        <asp:Button ID="Button2" runat="server"  Text="返回" OnClick="Button2_Click" CssClass="login_btn"/>
                        &nbsp;                     
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" Font-Underline="False" OnClick="LinkButton1_Click" ForeColor="White" BorderColor="White" BorderStyle="Dashed" BorderWidth="1px">【添加院系】</asp:LinkButton></td>
                </tr>
                <tr><th>院系资料</th></tr>
                <tr>
                    <td colspan="3" style="width: 100%;" align="left" valign="top">
                        <asp:Repeater ID="RepeaterD" runat="server" EnableTheming="True" OnItemCommand="RepeaterIC">
                            <ItemTemplate>
                                <table style="width:100%">
                                    <tr>
                                        <td rowspan="6" ><asp:Label ID="Label8" runat="server" Font-Size="Small" Text="院系资料" Width="80px"></asp:Label></td>
                                        <td colspan="4" rowspan="2" style="height:25px; background:url(../images/common/def.gif) no-repeat">
                                         </td>
                                     </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">
                                           <asp:Label ID="Label3" runat="server" Font-Size="Small" Height="1px" Text="院系代码：" Width="86px"></asp:Label></td>
                                        <td rowspan="2">
                                            <asp:Label ID="LabDepid" runat="server" Font-Size="Small" Width="120px" Text='<%# Eval("departmentid") %>' />
                                            <asp:TextBox ID="TxtDepid" runat="server" Font-Size="Small" Visible="false" Width="120px" Height="15px" Text='<%# Eval("departmentid") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="院系名称：" />
                                        </td>
                                        <td >
                                            <asp:Label ID="LabDepname" runat="server" Font-Size="Small" Text='<%# Eval("departmentname") %>' />
                                            <asp:TextBox ID="TxtDepname" runat="server" Font-Size="Small" Visible="false" Height="15px" Text='<%# Eval("departmentname") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td ><asp:Label ID="Label7" runat="server" Font-Size="Small" Text="系主任：" Width="85px"></asp:Label></td>
                                        <td >
                                            <asp:Label ID="LabDephead" runat="server" Font-Size="Small" Width="120px" Text='<%# Eval("departmenthead") %>' />
                                            <asp:TextBox ID="TxtDephead" runat="server" Font-Size="X-Small" Visible="false"  Height="15px" Text='<%# Eval("departmenthead") %>' />
                                        </td>
                                        <td ></td>
                                        <td class="abtn" >
                                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" CommandName="edit">编辑</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" CommandName="update" Visible="false">更新</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" CommandName="cancel" Visible="false">取消</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" CommandName="delete">删除</asp:LinkButton>
                                        </td>
                                    </tr>

                                </table>
                            </ItemTemplate>
                        </asp:Repeater>


                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="width:900px; height: 21px"></td>
                </tr>
            </table>       
        </div>
        <asp:Label ID="sms_lbl_note" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
