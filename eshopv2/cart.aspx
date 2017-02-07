<%@ Page Language="C#" MasterPageFile="~/eshopDefault.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="eshopv2.cart" Title="Korpa | Milupino" %>
<%@Register Src="user_controls/Cart.ascx" TagName="Cart" TagPrefix="Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="canonicalUrl" runat="server"></asp:Literal>
    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/css/mainMenuVertical.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row margin-top-2" id="cart">
        <div class="col-lg-10 col-lg-offset-1">
            <Cart:Cart ID="cart1" runat="server" />
        </div><!--col-->
    </div><!--row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerContentPlaceHolder" runat="server">
</asp:Content>
