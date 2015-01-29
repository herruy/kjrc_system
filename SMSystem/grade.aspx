<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grade.aspx.cs" Inherits="SMSstudent.SMSystem.grade" %>

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
            <table style="width: 100%">
                <tr>
                    <td align="center" style="width: 801px; height: 9px; background-image: url(../images/common/top_bg.GIF);">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="课程类别" ForeColor="White"></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="130px" ToolTip="请选择要查询的课程名称!" CssClass="username" Height="26px">
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="学生姓名" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="120px" EnableViewState="false" ToolTip="请输入要查询的学生姓名,并点击查询按钮!" CssClass="username"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="学号" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="112px" ToolTip="请输入要查询的学生学号,并点击查询按钮!" CssClass="username"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                            Text="查找" CssClass="login_btn" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" CssClass="login_btn" />
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="【添加】" Font-Size="Small" BorderStyle="Dotted" ForeColor="White"></asp:LinkButton></td>
                </tr>
                <tr style="font-size: 12pt">
                    <td rowspan="1">
                        <asp:GridView ID="sms_grade" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowEditing="RowEditing" OnRowCancelingEdit="RowCancel" OnRowUpdating="RowUpdata"
                            DataKeyNames="courseID" HorizontalAlign="Center" OnPageIndexChanging="Data_Page" Width="100%" OnRowDataBound="RowDataBound" PageSize="12" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Size="Small" ForeColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <Columns>

                                <asp:TemplateField HeaderText="课程号" SortExpression="courseid">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("courseid") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="详细资料">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Linkbutton1" runat="server" OnClick="Linkbutton1_Click" Text='<%# Eval("coursename") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="学号">
                                    <EditItemTemplate>
                                        <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("studentid")%>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblsid" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="学生姓名">
                                    <EditItemTemplate>
                                        <asp:Label ID="sname" runat="server" Text='<%# Bind("studentname") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="sname" runat="server" Text='<%# Bind("studentname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="成绩">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="gradeTexBox" runat="server" Text='<%# Bind("grade") %>' Width="41px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="grade" runat="server" Text='<%# Bind("grade") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="选择">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField HeaderText="编辑" ShowEditButton="True" CancelText="取消" EditText="编辑" UpdateText="更新" />


                            </Columns>
                            <RowStyle Font-Size="Small" HorizontalAlign="Center" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <PagerTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                        <td>
                                            <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" Font-Size="Small">首页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"
                                                Font-Size="Small">上一页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">下一页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">尾页</asp:LinkButton></td>
                                    </tr>
                                </table>
                            </PagerTemplate>
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td align="right" style="background-color: #e0d4d4" class="abtn">&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton>
                                        &nbsp;
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td style="">
                        <asp:Label ID="sms_lbl_note" runat="server"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
