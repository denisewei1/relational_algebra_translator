<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="programming_one._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    Please enter the query:<br />
                    <textarea runat="server" id="txt_sql" cols="100" rows="10">select * from userprofile</textarea>
                </td>
                <td valign="bottom">
                    &nbsp;&nbsp;<asp:Button ID="btn_search" runat="server" Text="search" OnClick="btn_search_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style=" color:Red;">
                   <asp:Label ID="lb_err" runat="server"  Text=""></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    Example query:<br />
                    1、select * from userprofile where user_name='peng'<br />
                    2、select * from userprofile where user_name like '%peng%'<br />
                    3、select * from userprofile where age=30
                </td>
            </tr>
            <tr>
                <td colspan="2"><br /><br />
                result:<br />
                    <asp:GridView ID="grd_list" runat="server">
                    </asp:GridView>
                </td>
            </tr>
           
        </table>
    </div> <textarea id="TextArea1" runat=server cols="40" rows="4"></textarea>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
