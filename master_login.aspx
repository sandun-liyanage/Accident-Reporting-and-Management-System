<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="master_login.aspx.cs" Inherits="master_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <h1 style="align-content:center">Login</h1>
    <table>
        <tr>
            <td>vehicle registration number: </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
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

