<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="master_homePage.aspx.cs" Inherits="master_homePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <div class="innerdiv">
            <h2>insert/update officer details</h2>
            <table>
                <tr>
                    <td>officer ID</td>
                    <td>
                        <asp:TextBox ID="officerID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>officer name</td>
                    <td>
                        <asp:TextBox ID="officerName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>department</td>
                    <td>
                        <asp:TextBox ID="department" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>password</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="innerdiv">
            <h2>delete officer details</h2>
            <table>
                <tr>
                    <td>Officer ID</td>
                    <td>
                        <asp:TextBox ID="officerIDdel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
        <br /><br /><br /><br />

    <style>
        h2{
            text-align: center;
        }
        table{
            margin-left: auto;
            margin-right:auto;
	        background-color: #022540;
	        padding: 10px;
	        margin-top: 5%;
        }
        td{
            color: orange;
	        height: 35px;
	        padding: 5px;
        }
        .innerdiv{
            width:40%;
            display:inline-block;
        }
    </style>
    </form>
</asp:Content>

