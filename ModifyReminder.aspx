<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyReminder.aspx.cs" Inherits="REMINDER_2.ModifyReminder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Modify Reminder</h1>
	
		<label for="date">select&nbsp; date:</label>
            <asp:DropDownList ID="ReminderDate" runat="server">
            </asp:DropDownList>
        <br><br>
      <label for="appt">Select&nbsp; time:</label>&nbsp;
            <asp:DropDownList ID="ReminderTime" runat="server">
            </asp:DropDownList>
    <br><br>
		<label for="subject">Select&nbsp; subject:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="31px">
            <asp:ListItem>deadline</asp:ListItem>
            <asp:ListItem>meeting</asp:ListItem>
            <asp:ListItem>other</asp:ListItem>
            <asp:ListItem>appointment</asp:ListItem>
        </asp:DropDownList>
	

		<br><br>
		<label for="description">&nbsp;description:<asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
        </label>
            <br>
		<br>
        <label for="email">&nbsp;email address:</label>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
        <br>
        <label for="text">
        <br />
&nbsp;contact number:</label>
		<asp:TextBox ID="TextBox4" runat="server" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        sms number:<asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
        <br />
&nbsp;&nbsp;
        <br>
    <br>
		<label for="recruit">Recruit for Next:<br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="7 Days" />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="5 Days" />
            <br />
            <asp:CheckBox ID="CheckBox4" runat="server" Text="3 Days" />
            <br />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="2 days" />
            <br />
            <br />
        </label>
            <br />

            
   
        <asp:Button ID="Button3" runat="server"  Text="confirm" OnClick="Button3_Click" />

            
   
        &nbsp;&nbsp;&nbsp;&nbsp;
		<label for="recruit">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Get Reminder" />
        </label>

            
   
        <asp:Button ID="Button2" runat="server" style="margin-left: 54px" Text="back" Width="58px" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label for="recruit">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
            </label>
        </div>
    </form>
</body>
</html>
