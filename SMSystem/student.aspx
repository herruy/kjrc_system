<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="SMSstudent.SMSystem.student" %>

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
    <style type="text/css">
        .auto-style1 {
            height: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <table style="width: 100%;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center" colspan="4" style="background-image: url('../images/common/top_bg.gif');" class="auto-style1">
                            <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="所在班级：" ForeColor="#FFFFCC"></asp:Label>
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Small" Width="94px" CssClass="username" Height="26px">
                            </asp:DropDownList>
                            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="学生姓名：" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" Width="120px" CssClass="username"></asp:TextBox>
                            &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="学生学号：" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Width="112px" CssClass="username"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="查找" Width="43px" CssClass="login_btn" />
                            <asp:Button ID="Button2" runat="server"  Width="43px"  OnClick="Button2_Click" Text="返回" CssClass="login_btn" />
                            <asp:Button ID="LinkButton5" runat="server"  Width="43px"  OnClick="LinkButton5_Click" Text="添加" CssClass="login_btn"></asp:Button></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="4" rowspan="0">
                            <asp:GridView ID="sms_student" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                DataKeyNames="studentID" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                                Width="100%" CellPadding="5" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" PageSize="12" CellSpacing="4">
                                <HeaderStyle BackColor="#044599" Font-Bold="True" Font-Size="Small" ForeColor="#F7F7F7" />
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <Columns>
                                    <asp:TemplateField HeaderText="学号" SortExpression="courseid">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/common/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                                Text="编辑"></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                                Text='<%# Bind("studentid") %>'></asp:HyperLink>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("studentid") %>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="详细资料">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/common/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                                Text="编辑"></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                                Text='<%# Bind("studentname") %>'></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="所在班级">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("classname")%>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("classname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="性别">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sex") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("sex") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="已修学分">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="cre" runat="server" Text='<%# Bind("credithour") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="crelabel" runat="server" Text='<%# Bind("credithour") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="家庭住址">
                                        <ItemTemplate>
                                            <asp:Label ID="addlabel" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="联系电话">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="tele" runat="server" Text='<%# Bind("telephone") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="telelabel" runat="server" Text='<%# Bind("telephone") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择删除">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle Font-Size="Small" HorizontalAlign="Center" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedRowStyle BackColor="#738A9C" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="#F7F7F7" />
                                <PagerStyle HorizontalAlign="Center" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <PagerTemplate>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                            <td>
                                                <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                            <td>&nbsp;&nbsp;</td>
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
                    <tr style="font-size: 12pt; border-color: #B5C7DE; background-color:#d6efe7">
                        <td align="right" colspan="4" class="abtn">
                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="3" style="width: 801px; height: 10px">
                            <asp:Label ID="sms_lbl_note" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label></td>
                        <td colspan="1" style="width: 3px; height: 10px"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
