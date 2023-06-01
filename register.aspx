<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p style="text-align:center">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Register your vehicle here"></asp:Label>
        </h1>
    
    
            <table border="0">
                <tr>
                    <td>Vehicle Number</td>
                    <td>
                        <asp:TextBox ID="vehicleNumber" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Owner Name</td>
                    <td>
                        <asp:TextBox ID="ownerName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address: <br /> House No</td>
                    <td>
                        <asp:TextBox ID="houseNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Street</td>
                    <td>
                        <asp:TextBox ID="street" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="city" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
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
                    <td>&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </form>
    <br /><br />

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
</asp:Content>

