<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Spies.aspx.cs" Inherits="ChallengeSpiesCSharp.Spies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link type="text/css" runat="server" rel="stylesheet" href="Spies.css" />
    </head>
    <body>
        <form id="form1" runat="server">
            
          <div id="DivImage1">
            <asp:Image ID="Image1" runat="server" src="Images/epic-spies-logo.jpg" Height="190px" Width="130px"/>
          </div>
            
            <h1>Spy New Assignment Form</h1>
            <p>
                Spy Code Name:&nbsp;
                <asp:TextBox ID="codeNameTB" runat="server"></asp:TextBox>
            </p>
            <p>
                New Assignment Name:&nbsp;
                <asp:TextBox ID="assignmentNameTB" runat="server"></asp:TextBox>
            </p>
            <br />
            <div>
                End Date of Previous Assignment:
                <asp:Calendar ID="previousCal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </div>
            <br />
            
                Start Date of New Assignment:
                <asp:Calendar ID="newCal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>

            
                Projected End Date of New Assignment:
                <asp:Calendar ID="endCal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>

            
            <br />
           <div id="buttons">
            <asp:Button ID="assignSpyButton" runat="server" Text="Assign Spy" OnClick="assignSpyButton_Click" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
           </div>
            
            <%--<asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:Calendar runat="server"></asp:Calendar>
                </Items>
                <Items>
                    <asp:Calendar runat="server"></asp:Calendar>
                </Items>
            </asp:Menu>--%>
        </form>
    </body>
</html>
