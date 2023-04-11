<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="REMINDER_2.logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <h3>Your have been logged out </h3>
            <p>&nbsp;</p>
            <p>Do you want to login again?&nbsp;&nbsp;&nbsp; </p>
            <p>&nbsp;CLICK HERE
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Login" />
            </p>
            
        </div>
    </form>
</body>
</html>
