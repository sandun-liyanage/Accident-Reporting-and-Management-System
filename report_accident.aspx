<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report_accident.aspx.cs" Inherits="report_accident" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    

    <form id="form1" runat="server" enctype="multipart/form-data">
    
        <p style="text-align:center;"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <table>
        <tr>
            <th colspan="2">report/ update accident</th>
        </tr>
        <tr>
            <td>vehicle number</td>
            <td>
                <asp:TextBox ID="vehicleNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>accident ID</td>
            <td>
                <asp:TextBox ID="accidentID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>date</td>
            <td>
                <asp:TextBox ID="date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>time</td>
            <td>
                <asp:TextBox ID="time" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>place</td>
            <td>
                <asp:TextBox ID="place" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>cause</td>
            <td>
                <select id="Select1" name="select" runat="server">
                    <option value="1">bad weather</option>
                    <option value="2">drunk driving</option>
                    <option value="3">distractions</option>
                    <option value="4">speeding</option>
                    <option value="5">other</option>
                </select></td>
        </tr>
        <tr>
            <td>upload image 1</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>upload image 2</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>upload image 3</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td>upload image 4</td>
            <td>
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
        </tr>
        <tr>
            <td>upload image 5</td>
            <td>
                <asp:FileUpload ID="FileUpload5" runat="server" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            </td>
        </tr>


        


        </table>
        <br /><br /><br /><br /><br />

        <table>
            <tr>
                <th colspan="2">delete accident details</th>
            </tr>
            <tr>
                <td>accident ID</td>
                <td>
                    <asp:TextBox ID="accidentIDdelete" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" /></td>
            </tr>
        </table>

        <h2>view accidents</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vehicleID,accidentID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="vehicleID" HeaderText="vehicleID" ReadOnly="True" SortExpression="vehicleID" />
                    <asp:BoundField DataField="accidentID" HeaderText="accidentID" ReadOnly="True" SortExpression="accidentID" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                    <asp:BoundField DataField="cause" HeaderText="cause" SortExpression="cause" />
                    <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [accident]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="view" />
        </p>


    <style>
        th{
            color: white;
            font-size: 25px;
            text-align: center;
        }
        table{
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

