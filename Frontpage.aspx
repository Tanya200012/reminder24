<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frontpage.aspx.cs" Inherits="REMINDER_2.front_page_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="set reminder" OnClick="Button1_Click" Width="173px" /><br /><br />
             
            <asp:Button ID="Button10" runat="server" Text="modify reminder" OnClick="Button2_Click" Width="172px" /> 
            <br /><br />
             
             <asp:Button ID="Button9" runat="server" Text="disable reminder" OnClick="Button3_Click" Width="173px" /> 
            <br />
            </br>
             <asp:Button ID="Button4" runat="server" Text="delete reminder" Width="175px" OnClick="Button4_Click" /> <br /><br />
             <asp:Button ID="Button5" runat="server" Text="enable reminder" OnClick="Button5_Click" Width="175px" /><br /><br />           
            <asp:Button ID="Button6" runat="server" Text="view  reminders" Width="173px" OnClick="Button6_Click" /><br /><br />
        </div>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/logout.aspx">logout</asp:HyperLink>
    </form>
</body>
</html>
