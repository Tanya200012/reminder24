<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup 2.aspx.cs" Inherits="REMINDER_2.signup_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="USERNAME"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
    <hr>
        <asp:Label ID="Label1" runat="server" Text="EMAIL"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            &nbsp;<asp:Label ID="Label3" runat="server" Text="REPEAT PASSWORD"></asp:Label>
        </p>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">SUBMIT</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server">CANCEL</asp:LinkButton>
        </p>
    </form>
</body>
</html>
