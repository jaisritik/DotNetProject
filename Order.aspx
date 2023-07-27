<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="_BookStore.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <main>
            <br />
            <div class="col-sm-12"><asp:Label ID="lblWelcome" runat="server" CssClass="text-capitalize text-info"></asp:Label></div>
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label id="op" class="col-sm-5" style="margin-top:1em;">Please select a product: </label>
                        </div>
                        <div class="col-sm-6" style="  margin:1em;">
                            <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True"
                                DataSourceID="SqlDataSource1" DataTextField="BookName"
                                DataValueField="BookID" CssClass="form-control">
                            </asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:BookStore %>"
                                SelectCommand="SELECT [BookId], [BookName], [ShortDescription], [LongDescription], [GenreID], [Author], [Price] 
                                FROM [Books] ORDER BY [BookName]">
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label ID="lblSDes" runat="server"></asp:Label></h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label ID="lblLDes" runat="server"></asp:Label></h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label ID="lblPrice" runat="server"></asp:Label></h4>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <asp:Image ID="imgProduct" runat="server" />
                    </div>
                </div>
                <%--      -------------------------- <end of row 1 >--------------------%>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-1" style="margin-bottom:1em">Quantity: </label>
                            <div class="col-sm-3">
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtQuantity" CssClass="txt-denger" Display="Dynamic"
                                    ErrorMessage="Quantity is required field." ForeColor="Red"></asp:RequiredFieldValidator>

                                <asp:RangeValidator ID="RangeValidator1" runat="server"
                                    ControlToValidate="txtQuantity" CssClass="txt-denger" Display="Dynamic"
                                    ErrorMessage="Qunatity must be range of 1 to 500." MaximumValue="500" MinimumValue="1"
                                    Type="Integer" ForeColor="#33CCFF"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12" style="margin-top:2em";>
                                
                                <asp:Button ID="btnAdd" runat="server"  Text="Add to Cart" OnClick="btnAdd_Click" CssClass="btn btn-primary" style="margin-right:2em;" />

                                <asp:Button ID="btncart" runat="server" Text="Go to Cart" PostBackUrl="~/Cart.aspx"
                                    CausesValidation="false" CssClass="btn btn-warning" OnClick="btncart_Click" />
                            </div>
                        </div>
                    </div>
                </div>
        </main>
    </div>
</asp:Content>



