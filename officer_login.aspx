<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="officer_login.aspx.cs" Inherits="officer_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p style="text-align:center">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <h1 style="align-content:center">Login</h1>
    <table>
        <tr>
            <td>officer ID</td>
            <td>
                <asp:TextBox ID="officerID" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>password</td>
            <td>
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
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

