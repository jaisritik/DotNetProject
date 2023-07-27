<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="LoginPage.aspx.cs" Inherits="Yograj_BookStore.LoginPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .newStyle1 {
            font-weight: bold;
            font-size: x-large;
            color: #008000;
            float: none;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 424px;
            text-align: center;
            height: 117px;
        }

        .auto-style3 {
            text-align: center;
            height: 71px;
        }

        .auto-style6 {
            text-align: left;
            width: 380px;
            height: 117px;
        }

        .auto-style8 {
            text-align: center;
            width: 380px;
            height: 60px;
        }

        .auto-style11 {
            width: 424px;
            font-size: large;
            text-align: center;
            height: 60px;
        }

        .auto-style12 {
            width: 424px;
            font-size: large;
            text-align: center;
            height: 63px;
        }

        .auto-style13 {
            text-align: center;
            width: 380px;
            height: 63px;
        }

        .auto-style14 {
            height: 63px;
        }

        .auto-style15 {
            height: 60px;
        }

        .auto-style16 {
            height: 117px;
        }
    </style>

        <div class="auto-style3">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="DarkOliveGreen" Text="Login Page"></asp:Label>
        </div>
        <div>
            <table class="auto-style1">

                <tr>
                    <td class="auto-style11" id="lblUser">
                        <asp:Label ID="lblFirstName" runat="server" Font-Size="X-Large" Font-Bold="true" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="First Name Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblLastName" runat="server" Font-Size="X-Large" Font-Bold="true" Text="Last Name"></asp:Label>
                    </td>

                    <td class="auto-style13">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="errorMsg" runat="server" ControlToValidate="txtPassword" ErrorMessage="Last Name Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style6">

                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="96px" PostBackUrl="~/Default.aspx" CssClass="btn btn-primary" CausesValidation="false" />

                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="LoginMsg" runat="server" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>


</asp:Content>
