<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="_BookStore.Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <main>
            <div class="row">
                <div class="col-sm-12" style="margin: 1em;">
                    <h1>Your Shoping Cart</h1>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="col-sm-12" style="margin: 1em;">
                            <asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group" style="margin: 1em;">
                        <div class="col-sm-12" style="margin-bottom: 1em">
                            <asp:Button ID="btnRemove" runat="server" Text="Remove Item" OnClick="btnRemove_Click" CssClass="btn btn-dark" />
                        </div>
                        <div class="col-sm-12">
                            <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" OnClick="btnEmpty_Click" CssClass="btn btn-danger" Width="123px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false" CssClass="text-info col-sm-12">
                        </asp:Label>
                    </div>
                    <div class="form-group" style="margin: 1em;">
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server" PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="btn btn-primary" style="margin-right:1em; left: 0px; top: 0px; width: 181px;"/>
                            <asp:Button ID="btnCheckOut" runat="server" OnClick="btnCheckOut_Click" Text="Check Out" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>



