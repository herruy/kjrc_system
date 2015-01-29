<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="speciality.aspx.cs" Inherits="SMSstudent.SMSystem.speciality" %>

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
                    <table style="width: 100%">
                        <tr>
                            <td align="center" background="../images/common/top_bg.GIF" style="height: 7px">&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="所属院系：" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="93px" Font-Size="X-Small" CssClass="username" Height="26px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="查找" Width="43px" CssClass="login_btn" />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" CssClass="login_btn" />
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="添加专业" Font-Size="Small" BorderStyle="Dotted" ForeColor="White"></asp:LinkButton></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td rowspan="1">
                                <asp:GridView ID="sms_grade" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    DataKeyNames="specialityid" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                                    OnRowCancelingEdit="RowCancel" OnRowDataBound="RowDataBound" OnRowEditing="RowEditing"
                                    OnRowUpdating="RowUpdata" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <HeaderStyle BackColor="#044599" Font-Bold="True" Font-Size="Small" ForeColor="White" />
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="专业代号" SortExpression="specialityid">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("specialityid") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Labspeid" runat="server" Text='<%# Eval("specialityid") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="专业名称">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("specialityname") %>' Width="91px"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("specialityname") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="院系代码">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("departmentid")%>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblsid" runat="server" Text='<%# Bind("departmentid") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="院系名称">
                                            <EditItemTemplate>
                                                <asp:Label ID="sname" runat="server" Text='<%# Bind("departmentname") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="sname" runat="server" Text='<%# Bind("departmentname") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="选择">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSelect" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField CancelText="取消" EditText="编辑" HeaderText="编辑" ShowEditButton="True"
                                            UpdateText="更新" ItemStyle-CssClass="abtn" />
                                    </Columns>
                                    <RowStyle Font-Size="Small" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#CC3333" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle HorizontalAlign="center" BackColor="White" ForeColor="Black" />
                                    <PagerTemplate>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                                <td class="abtn">&nbsp;&nbsp;<asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
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
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td align="center" class="abtn">
                                <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td class="auto-style3">
                                <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label></td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
