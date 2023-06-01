<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <form id="form1" runat="server">
    <h1 style="align-content:center">Login</h1>
        <p style="text-align:center">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <table>
        <tr>
            <td>vehicle registration number: </td>
            <td>
                <asp:TextBox ID="vehicleNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
        <br /><br /><br /><br /><br /><br /><br /><br />

    <style>
        h1{
            text-align: center;
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
    </style>
    </form>
</asp:Content>

