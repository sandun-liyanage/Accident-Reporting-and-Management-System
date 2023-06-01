<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="officer_homePage.aspx.cs" Inherits="officer_homePage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
        <h1 style="margin-left:20px">reported accidents</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="vehicleID,accidentID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="vehicleID" HeaderText="vehicleID" ReadOnly="True" SortExpression="vehicleID" />
            <asp:BoundField DataField="accidentID" HeaderText="accidentID" ReadOnly="True" SortExpression="accidentID" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
            <asp:BoundField DataField="cause" HeaderText="cause" SortExpression="cause" />
            <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [accident]"></asp:SqlDataSource>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        
        <br /><br />


        <div id="appDiv">
        <h1>approve or reject accident</h1>
        
            <table>
                <tr>
                    <td>accident ID</td>
                    <td>
                        <asp:TextBox ID="accidentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="approve" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="reject" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        
    </div>

        <div id="appDiv">
            <h1>see accident statistics</h1>
            <table>
                <tr>
                    <td>policeID</td>
                    <td>
                        <asp:TextBox ID="policeID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>password</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" /></td>
                </tr>
            </table>
        </div>
        <br /><br /><br />

    </form>

    
    <style>
        #appDiv{
            padding:20px;
            
        }
        table{
	        width: 400px;
	        margin: auto;
	        background-color: #022540;
	        padding: 10px;
	        margin-top: 5%;
        }
        td{
            color: orange;
	        height: 35px;
	        padding: 5px;
        }
        h1{
            text-align:center;
        }
        
    </style>


</asp:Content>

