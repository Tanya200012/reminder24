<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enablereminder.aspx.cs" Inherits="REMINDER_2.Enablereminder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Enable reminder</h1>
      	<label for="date">Select a date:</label>
            <asp:DropDownList ID="ReminderDate" runat="server">
            </asp:DropDownList>
        <br><br>
		
      <label for="appt">Select a time:</label>&nbsp;
            <asp:DropDownList ID="ReminderTime" runat="server">
            </asp:DropDownList>
        <br><br>
		<label for="subject">Select a subject:</label>&nbsp;
          <asp:DropDownList ID="DropDownList3" runat="server" style="margin-top: 0px">
              <asp:ListItem>meeting</asp:ListItem>
              <asp:ListItem>deadline</asp:ListItem>
              <asp:ListItem>appointment</asp:ListItem>
              <asp:ListItem>other</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
        <br>
        <label for="reminder">Reminder:</label>&nbsp;
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>reminder 1(des. 1)</asp:ListItem>
              <asp:ListItem>reminder 2(des 2)</asp:ListItem>
              <asp:ListItem>reminder 3(des 3)</asp:ListItem>
              <asp:ListItem>no reminder</asp:ListItem>
          </asp:DropDownList>
          <br />
        
        <br>
		<label for="description">Enter description:<asp:TextBox ID="TextBox3" runat="server" Height="71px" style="margin-right: 0px" TextMode="MultiLine" Width="217px"></asp:TextBox>
        </label><br>
		<br><br>
		<label for="email">Enter email address:</label>
		<asp:TextBox ID="TextBox4" runat="server"  TextMode="Email"></asp:TextBox>
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
            <asp:ListItem>7 days</asp:ListItem>
            <asp:ListItem>5 days</asp:ListItem>
            <asp:ListItem>3 days</asp:ListItem>
            <asp:ListItem>2 days</asp:ListItem>
        </asp:CheckBoxList>
        </label>
        <br><br>
		&nbsp;
        </div>
		<asp:Button ID="Button1" runat="server" Text="back" OnClick="Button1_Click"   />
   
        <asp:Button ID="Button2" runat="server" style="margin-left: 54px" Text="confirm" OnClick="Button2_Click" />
      
        
       
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        
       
      </div>
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logout.aspx">logout</asp:HyperLink>
      <br>
     
        </div>
    </form>
</body>
</html>
