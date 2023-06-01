<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="text-align:center"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <div id="divsquareouter">
        <div class="divsquare" onclick="regfunc()">
            <h1>register</h1>
        </div>
        <div class="divsquare" onclick="userLoginFunc()">
            <h1>user login</h1>
        </div>
        <div class="divsquare" onclick="officerLoginFunc()">
            <h1>officer login</h1>
        </div>
        <div class="divsquare" onclick="masterLoginFunc()">
            <h1>master login</h1>
        </div>
    </div>
    
    <style>
        .divsquare{
            background-color: green;
            width: 20%;
            height: 300px;
            display: inline-block;
            margin: 50px 25px 50px 35px;
            text-align: center;
            cursor: pointer;
        }
        
    </style>

    <script>
        function regfunc() {
            window.location.href = "register.aspx";
        }
        function userLoginFunc() {
            window.location.href = "user_login.aspx";
        }
        function masterLoginFunc() {
            window.location.href = "master_login.aspx";
        }
        function officerLoginFunc() {
            window.location.href = "officer_login.aspx";
        }
    </script>

</asp:Content>

