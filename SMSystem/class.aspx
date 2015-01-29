<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class.aspx.cs" Inherits="SMSstudent.SMSystem._class" %>

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
        <div style="background-image: url(../images/common/top_bg.gif); text-align: center">
            <asp:Label ID="Label1" runat="server" Text="专业名称：" ForeColor="White"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="92px" CssClass="username" Height="25px">
            </asp:DropDownList>
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" CssClass="login_btn" />
            <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" CssClass="login_btn" />
            <asp:Button ID="add" runat="server" Text="添加" OnClick="add_Click" CssClass="login_btn" />

        </div>
        <table class="table2" border="0" cellspacing="1" width="100%">
            <tr>
                <th>班级信息管理
                </th>
            </tr>
            <tr>
                <td colspan="5" style="width: 100%;">
                    <span style="width: 3px; height: 21px">
                        <asp:DataList ID="sms_class" runat="server" RepeatColumns="4" Width="100%" OnEditCommand="DataList_EditCommand" OnCancelCommand="Datalist_CancelCommand" OnUpdateCommand="Datalist_UpdateCommand" OnDeleteCommand="Datalist_DeleteCommand">
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="3" style="width: 25%">
                                            <b>
                                                <%# Eval("classname") %>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label2" runat="server" Text="班号：" Width="66px"></asp:Label></td>
                                        <td>

                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("classid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label4" runat="server" Text="所属专业：" Width="80px"></asp:Label></td>
                                        <td style="width: 124px; height: 21px;">
                                            <%# Eval("specialityname") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label5" runat="server" Text="入学时间：" Width="81px"></asp:Label></td>
                                        <td style="width: 124px">
                                            <%# Eval("entranceyear") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label6" runat="server" Text="班长：" Width="58px"></asp:Label></td>
                                        <td style="width: 124px">
                                            <%# Eval("studentname") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="【编辑】" />
                                            <asp:LinkButton ID="LinkButton0" runat="server" CommandName="Delete" Text="【删除】" />
                                        </td>

                                    </tr>
                                </table>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <table style="width: 100%;">
                                    <tr>
                                        <td colspan="3" style="width: 25%">
                                            <b>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("classname") %>' Font-Size="X-Small"></asp:TextBox>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label2" runat="server" Text="班号：" Width="66px"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Lblcid" runat="server" Width="72px" Text='<%# Eval("classid") %>' Font-Size="X-Small"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label4" runat="server" Text="所属专业：" Width="80px"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Width="94px" Text='<%# Eval("specialityname") %>' Font-Size="X-Small"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label5" runat="server" Text="入学时间：" Width="81px"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Width="55px" Text='<%# Eval("entranceyear") %>' Font-Size="X-Small"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label6" runat="server" Text="班长：" Width="58px"></asp:Label></td>
                                        <td class="abtn">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="56px" Text='<%# Eval("studentname") %>' Font-Size="X-Small"></asp:TextBox>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 21px">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">【更新】</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel">【取消】</asp:LinkButton></td>
                                    </tr>
                                </table>


                            </EditItemTemplate>
                            <EditItemStyle BackColor="GhostWhite" Font-Size="Small" />
                            <AlternatingItemStyle BackColor="GhostWhite" Font-Size="Small" />
                            <ItemStyle Font-Size="Small" />
                            <SeparatorStyle BackColor="GhostWhite" />
                            <FooterStyle BackColor="White" />
                        </asp:DataList></span><asp:Label ID="message" runat="server" Enabled="false" Text='' />
                </td>
            </tr>
            <tr>
                <td colspan="5" class="abtn" style="background-color: #f6f0f0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    共有<asp:Label ID="lblRecordCount" ForeColor="Red" runat="server" Font-Size="Small" />条记录
                    &nbsp; 当前为<asp:Label ID="lblCurrentPage" ForeColor="Red" runat="server" Font-Size="Small" />/<asp:Label ID="lblPageCount" ForeColor="Red" runat="server" Font-Size="Small" />页

                   <asp:LinkButton ID="lbnPrevPage" Text="上一页" CommandName="prev" runat="server" OnCommand="Page_OnClick" Font-Size="Small" />
                    <asp:LinkButton ID="lbnNextPage" Text="下一页" CommandName="next" runat="server" OnCommand="Page_OnClick" Font-Size="Small" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
