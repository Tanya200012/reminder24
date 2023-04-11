<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReminder.aspx.cs" Inherits="REMINDER_2.ViewReminder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>view your reminder</h1>
        <label for="date">select from date:</label>
          <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
          <br><br>
      <label for="appt">Select from time:</label>&nbsp;
          <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
      
    <br><br>
        <br>
        <label for="date">select to date: </label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
          <br><br>
      <label for="appt">Select to time:</label>&nbsp;
      
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Time"></asp:TextBox>
      
      </div>
          <br />
      <br>
      <label for="subject">Subject:</label>&nbsp;
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>meeting</asp:ListItem>
              <asp:ListItem>appointment</asp:ListItem>
              <asp:ListItem>deadline</asp:ListItem>
              <asp:ListItem>other</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
      <br>
          
          <br><br>

        <table style="width:100%"></table>
          &nbsp;
          </tr>
        </thead>
        <tbody>
          <!-- table rows here -->
        </tbody>
      </table>
          <br />
          <br />
          <br />
          <asp:GridView ID="grdViewReminder" runat="server">
        </asp:GridView>
          <br />
          <br><br><br>
      
            
      
      <br>
          <asp:Button ID="Button1" runat="server" Text="back" OnClick="Button1_Click" style="height: 29px" />
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	      <asp:Button ID="Button5" runat="server" Text="Modify Reminder" Width="189px" OnClick="Button5_Click"  />&nbsp;&nbsp;
          <asp:Button ID="Button6" runat="server" Text="Disable Reminder" OnClick="Button6_Click" />&nbsp;&nbsp;&nbsp;
	      <asp:Button ID="Button7" runat="server" Text="Delete Reminder" OnClick="Button7_Click" />&nbsp;
	<br>
      
    <br>
	
	      </br>
          </br>
	<br>
	      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/logout.aspx">logout</asp:HyperLink>
	      </br>
          </br>
      
    </form>
	<br>
	<br>
	<br>
	&nbsp;<br><br><br>
        </div>
    </form>
</body>
</html>
