<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="statistics.aspx.cs" Inherits="statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <br />
    <h1>statistics of accidents and it's cause</h1>
        <p>
            <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load">
                <Series>
                    <asp:Series ChartType="Pie" Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </p>

    </form>

</asp:Content>

