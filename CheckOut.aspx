<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="_BookStore.CheckOut" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <center>
        <h1>Check Out Page</h1>
    </center>
    <div style="margin-left: 20em">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entities:" />
        <br />
        <h3>Contact Information</h3>

        <div class="form-group" style="display: flex; margin: 1em">

            <lable class="control-label col-sm-3">
                Email Address:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email" BorderColor="#CCCCFF" Height="25px" Width="20em"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail1" CssClass="text-danger" Display="Dynamic" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                Email Re-entery:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" TextMode="Email" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Re-enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvEmail2" runat="server" CssClass="text-danger" ControlToValidate="txtEmail2" Display="Dynamic" ControlToCompare="txtEmail1" ErrorMessage="Email re-entry">
                    Must Match First Email
                </asp:CompareValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                First Name:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" CssClass="text-danger" ControlToValidate="txtFirstName" ErrorMessage="fast name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                Last Name:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" CssClass="text-danger" ControlToValidate="txtLastName" ErrorMessage="Last name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                Phone Number:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPNumber" runat="server" CssClass="text-danger" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <h3>Billing Address</h3>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                Address:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" CssClass="text-danger" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                City:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" CssClass="text-danger" ControlToValidate="txtCity" ErrorMessage="City is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">

            <label class="control-label col-sm-3">State:</label>
            <div class="col-sm-5">
                <asp:DropDownList ID="ddlState" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName" CssClass="form-control">
                    <asp:ListItem>Choose One...</asp:ListItem>

                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:BookStore %>"
                    SelectCommand="SELECT [StateName] FROM [State] ORDER BY [StateName]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvState" runat="server" CssClass="text-danger" InitialValue="Choose One.." ControlToValidate="ddlState" ErrorMessage="Choose a State" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group" style="display: flex; margin: 1em">
            <lable class="control-label col-sm-3">
                Zip Code:
            </lable>
            <div class="col-sm-5">
                <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control" MaxLength="5" BorderColor="#CCCCFF" Height="25px" Width="20em">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" CssClass="text-danger" ControlToValidate="txtZipCode"
                    ErrorMessage="Must be a five-digit U. S.  zip code" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <h3>Optional Data</h3>
        <div class="form-group" style="margin: 1em">
            <div class="col-sm-12">
                <label>Please let me know about: </label>
                <asp:CheckBoxList ID="cblAboutList" runat="server" RepeatColumns="2" Style="margin: 1em" CellSpacing="5" Height="80px" Width="30em">
                    <asp:ListItem Value="new" Selected="True">New Product</asp:ListItem>
                    <asp:ListItem Value="special">Special Offers</asp:ListItem>
                    <asp:ListItem Value="revision">New Editions</asp:ListItem>
                    <asp:ListItem Value="local">Local Events</asp:ListItem>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="form-group" style="margin: 1em">
            <div class="col-sm-12">
                <label>Please let me via: </label>
                <asp:RadioButtonList ID="rblContactVia" runat="server" RepeatDirection="Horizontal" SelectionMode="Multiple" Style="margin: 1em;" Width="30em">
                    <asp:ListItem Selected="True">Twitter</asp:ListItem>
                    <asp:ListItem>Facebook</asp:ListItem>
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Text Message</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="form-group" style="margin: 1em;">
            <div class="col-sm-12">

                <asp:Button ID="btnCheckOut" runat="server" BorderWidth="2px" Text="Check Out" OnClick="btnCheckOut_Click" CssClass="btn btn-primary" Style="margin-right: 25px; left: 0px; top: 0px; width: 132px; height: 58px;" />
                <asp:Button ID="btnCancle" runat="server" BorderWidth="2px" Text="Cancel Order" CssClass="btn btn-danger" CausesValidation="false" OnClick="btnCancle_Click" Style="margin-right: 25px; left: 0px; top: 0px; height: 58px; width: 153px;" />

                <asp:LinkButton ID="lbtnContinueShopping" runat="server" BorderWidth="2px" CssClass="btn btn-warning" PostBackUrl="~/Order.aspx" CausesValidation="false">Continue Shopping</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
