<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetReminder.aspx.cs" Inherits="REMINDER_2.set_reminder_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Set Reminder</h1>
	    </div>
		<label for="date">Select a date:</label>
		<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        <br><br>
		
      <label for="appt">Select a time:</label>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
        <br><br>
		<label for="subject">Select a subject:</label>
		<asp:DropDownList ID="DropDownList2" runat="server" Height="24px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="128px">
            <asp:ListItem>meeting</asp:ListItem>
            <asp:ListItem>appointment</asp:ListItem>
            <asp:ListItem>deadline</asp:ListItem>
            <asp:ListItem>other</asp:ListItem>
        </asp:DropDownList>
        <br><br>
		<label for="description">Enter description:<asp:TextBox ID="TextBox3" runat="server" Height="71px" style="margin-right: 0px" TextMode="MultiLine" Width="217px"></asp:TextBox>
        </label><br>
		<br><br>
		<label for="email">Enter email address:</label>
		<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Email"></asp:TextBox>
        <br><br>
		<label for="text">phone number</label>
		:
		<asp:TextBox ID="TextBox5" runat="server" Height="16px" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        Sms number :
        <asp:TextBox ID="TextBox6" runat="server" style="margin-top: 3px"></asp:TextBox>
        <br><br>
		<label for="recruit">Recruit for Next:<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>7 Days</asp:ListItem>
            <asp:ListItem>5 Days</asp:ListItem>
            <asp:ListItem>3 Days</asp:ListItem>
            <asp:ListItem>2 Days</asp:ListItem>
        </asp:CheckBoxList>
        </label>
        <br><br>
		&nbsp;
        </div>
		<asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
   
        <asp:Button ID="Button2" runat="server" style="margin-left: 54px" Text="cancel" OnClick="Button2_Click" />
         </form>
</body>
</html>
