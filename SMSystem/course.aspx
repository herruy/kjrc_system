<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="SMSstudent.SMSystem.course" %>

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
            <table style="width: 100%" cellspacing="0" paddingspacing="0" border="0">
                <tr>
                    <td colspan="2" style="background-image: url(../images/common/top_bg.GIF);" align="center">
                        <asp:Label ID="Label4" runat="server" Text="课程类别" Font-Size="Small" ForeColor="White"></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="94px" CssClass="username" Height="25px">
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Text="课程名称" Font-Size="Small" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="120px" Font-Size="X-Small" CssClass="username"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Size="Small" Text="课程代码" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="112px" Font-Size="X-Small" CssClass="username"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="查找" Width="43px" OnClick="Button1_Click" CssClass="login_btn" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" CssClass="login_btn" />
                        <asp:LinkButton runat="server" ID="LinkButton5" Text="【添加】" OnClick="LinkButton5_Click" BorderColor="White" BorderStyle="Dotted" ForeColor="White"></asp:LinkButton>
                    </td>
                    <td class="abtn" style="background-image: url(../images/common/top_bg.GIF);" align="center">
                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click" ForeColor="White">删除</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Size="Small" ForeColor="White">反选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small" ForeColor="White">全选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click" ForeColor="White">取消</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="1">
                        <asp:GridView ID="sms_student" runat="server" DataKeyNames="courseID" AllowPaging="True" AutoGenerateColumns="False"
                            OnPageIndexChanging="Data_Page" Width="100%" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="1" PageSize="6" CellSpacing="1">


                            <HeaderStyle Font-Bold="True" BackColor="#044599" Font-Size="Small" ForeColor="White"></HeaderStyle>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <Columns>
                                <asp:TemplateField HeaderText="课程号" SortExpression="courseid">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("courseid") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="详细资料(点击查看)">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Linkbutton1" runat="server" Text='<%# Eval("coursename") %>' OnClick="Linkbutton1_Click"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="课程类别">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("typename")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("typename") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="学分">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("credithour") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("credithour") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="选择">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle Font-Size="Small" HorizontalAlign="Center" ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="White" />
                            <PagerStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />

                            <PagerTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                        <td>
                                            <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" Font-Size="Small" CommandArgument="First" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" Font-Size="Small" CommandArgument="Prev" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" Font-Size="Small" CommandArgument="Next" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页</asp:LinkButton></td>
                                        <td class="abtn">
                                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" Font-Size="Small" CommandArgument="Last" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页</asp:LinkButton></td>

                                    </tr>
                                </table>
                            </PagerTemplate>



                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />



                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="courseid"
                            OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_ConcelCommand" OnUpdateCommand="DataList1_UpdateCommand">
                            <ItemTemplate>
                                <table class="table1" width="100%">
                                    <tr>
                                        <th colspan="6">当前编辑:<b><%# Eval("coursename") %></b></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Text="课程代码:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("courseid") %>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" Text="课程类别:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("coursetypeid") %>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Text="类别名称：" Width="88px" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("typename")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Text="学分:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("credithour")%>
                                        </td>

                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text="总学时:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("totalperiod")%>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Text="周学时:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("weekperiod")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="备注:" Font-Size="Small"></asp:Label></td>
                                        <td><%# Eval("remark") %>
                                        </td>
                                        <td colspan="5"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" class="abtn">
                                            <asp:LinkButton runat="server" ID="LBE" CommandName="Edit" Text="【編輯】" Font-Size="Small"></asp:LinkButton>

                                        </td>
                                    </tr>
                                </table>

                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="lblEmpty" Text="请点击左边的课程名来显示该课程的详细信息。" runat="server" Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>'></asp:Label>
                            </FooterTemplate>
                            <EditItemTemplate>
                                <table class="table1" width="100%">
                                    <tr>
                                        <th colspan="6">当前编辑:<b><%# Eval("coursename") %></b></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" Text="课程代码:" Font-Size="Small"></asp:Label>
                                        </td>
                                        <td><%# Eval("courseid") %>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Text="课程类别:" Font-Size="Small"></asp:Label>
                                        </td>
                                        <td><%# Eval("coursetypeid") %>
                                        </td>

                                        <td>
                                            <asp:Label ID="Label24" runat="server" Text="类别名称：" Width="88px" Font-Size="Small"></asp:Label></td>
                                        <td style="width: 87px; height: 17px; font-size: small;"><%# Eval("typename")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" Text="学分:" Font-Size="Small"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Small">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                            </asp:DropDownList></td>

                                        <td>
                                            <asp:Label ID="Label26" runat="server" Text="总学时:" Font-Size="Small"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("totalperiod")%>' Height="12px" Width="78px" Font-Size="Small"></asp:TextBox>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label27" runat="server" Text="周学时:" Font-Size="Small"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Small">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Text="备注:" Font-Size="Small"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("remark") %>' Height="41px" TextMode="MultiLine" Width="137px" Font-Size="Small"></asp:TextBox></td>
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" class="abtn">
                                            <asp:LinkButton runat="server" ID="LBU" CommandName="update" Text="【更新】" Font-Size="Small"></asp:LinkButton><asp:LinkButton runat="server" ID="LBC" CommandName="cancel" Text="【取消】" Font-Size="Small"></asp:LinkButton></td>
                                    </tr>
                                </table>
                            </EditItemTemplate>

                        </asp:DataList></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 10px; width: 789px;">
                        <asp:Label ID="Label14" runat="server" Visible="false"></asp:Label>
                        <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>

</body>
</html>
