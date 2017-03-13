<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Login.Master" CodeBehind="Login.aspx.vb" Inherits="QLHS1.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <legend>Đăng nhập</legend>
        <div class="form-group">
            <asp:Label ID="lblError" runat="server" CssClass="col-sm-12 text-center text-danger" ></asp:Label>
        </div>
        <div class="form-group text">
            <asp:Label ID="Label1" CssClass="col-sm-3 control-label" Text="Username" runat="server"></asp:Label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group password">
            <asp:Label ID="Label2" CssClass="col-sm-3 control-label" Text="Password" runat="server"></asp:Label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
    </fieldset>
    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn aka-btn btn-info col-sm-3 col-sm-push-9" />
    
</asp:Content>
