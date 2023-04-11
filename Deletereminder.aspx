<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deletereminder.aspx.cs" Inherits="REMINDER_2.Deletereminder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Delete Reminder</h1>
      <label for="date">select a date:</label>&nbsp;<asp:DropDownList ID="ReminderDate" runat="server">
            </asp:DropDownList>
          <br><br>
      <label for="appt">Select a time:</label>&nbsp;
            <asp:DropDownList ID="ReminderTime" runat="server">
            </asp:DropDownList>
      </div>
          <br />
      <br>
      <label for="subject">Subject:</label>&nbsp;
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>meeting</asp:ListItem>
              <asp:ListItem>deadline</asp:ListItem>
              <asp:ListItem>appointment</asp:ListItem>
              <asp:ListItem>other</asp:ListItem>
          </asp:DropDownList>
          <br />
      <br>
      <label for="reminder">Reminder:</label>&nbsp;
          <asp:DropDownList ID="DropDownList2" runat="server">
              <asp:ListItem>reminder 1(des. 1)</asp:ListItem>
              <asp:ListItem>reminder 2(des 2)</asp:ListItem>
              <asp:ListItem>reminder 3(des 3)</asp:ListItem>
              <asp:ListItem>no reminder</asp:ListItem>
          </asp:DropDownList>
          <br />
      <br>
      <label for="description">Description:</label>
          <br />
        <textarea readonly style="height: 68px; width: 215px"> Contents... </textarea>
&nbsp;
          &nbsp;&nbsp;
          <br />
          <br />
&nbsp;&nbsp;&nbsp;
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="confirm" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
          &nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logout.aspx">logout</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
        </div>
    
</body>
</html>
