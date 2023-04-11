<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login 2.aspx.cs" Inherits="REMINDER_2.login_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div class="text">Login Form</div></br></br>
            <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </br></br>

        
        <asp:Label ID="Label3" runat="server" Text="password"></asp:Label><br />
            </div>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" style="height: 29px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="cancel" />
        </p>
        <p>
            Not a Member?&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Signup now" />
        </p>
    </form>
</body>
</html>
