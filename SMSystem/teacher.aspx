<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="SMSstudent.SMSystem.teacher" %>

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
        <table style="width: 100%;">
            <tr>
                <td align="center" bgcolor="#ffffff" colspan="3" style="width: 552px; height: 1px; background-image: url(../images/common/top_bg.gif);">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="77px" Font-Size="Small" CssClass="username" Height="28px">
                </asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="教师姓名:" ForeColor="#CCFFFF"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="89px" Font-Size="X-Small" CssClass="username"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" CssClass="login_btn" />
                    <input type="button" value="返回" class="login_btn" onclick="javascript: window.location.href = location.href" />
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DataGrid ID="sms_teacher" runat="server" Width="100%" DataKeyField="Teacherid"
                        OnEditCommand="DataGrid_edit" OnDeleteCommand="DataGrid_delete" OnCancelCommand="DataGrid_cancel" OnPageIndexChanged="DataGrid_Page"
                        AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" GridLines="Horizontal" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                        <SelectedItemStyle ForeColor="White" BackColor="#CC3333" Font-Bold="True"></SelectedItemStyle>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle Font-Bold="True" BackColor="#044599" HorizontalAlign="Center" ForeColor="White"></HeaderStyle>
                        <Columns>
                            <asp:HyperLinkColumn DataNavigateUrlField="Teacherid" DataNavigateUrlFormatString="teacherlist.aspx?id={0}"
                                DataTextField="Teacherid" HeaderText="教师号"></asp:HyperLinkColumn>

                            <asp:HyperLinkColumn DataNavigateUrlField="Teacherid" DataNavigateUrlFormatString="teacherlist.aspx?id={0}"
                                DataTextField="Teachername" HeaderText="姓名(点击进入详细页面)"></asp:HyperLinkColumn>

                            <asp:BoundColumn DataField="sex" HeaderText="性别"></asp:BoundColumn>
                            <asp:BoundColumn DataField="DepartmentID" HeaderText="学院编号"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Departmentname" HeaderText="所在学院"></asp:BoundColumn>
                            <asp:BoundColumn DataField="telephone" HeaderText="联系电话"></asp:BoundColumn>
                            <asp:ButtonColumn Text=" 删 除 " CommandName="Delete" ButtonType="LinkButton" ItemStyle-CssClass="abtn"></asp:ButtonColumn>

                        </Columns>
                        <PagerStyle NextPageText=" 下一页" Font-Size="12pt" PrevPageText="上一页" HorizontalAlign="Center"
                            ForeColor="Black" BackColor="White" CssClass="abtn"></PagerStyle>
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:DataGrid>
                </td>
            </tr>
        </table>
        <asp:Label ID="sms_lbl_note" runat="server" Width="718px"></asp:Label>

    </form>
</body>
</html>
