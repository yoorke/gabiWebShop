﻿<%@ Page Title="" Language="C#" MasterPageFile="~/eshopDefault.Master" AutoEventWireup="true" CodeBehind="passwordChanged.aspx.cs" Inherits="eshopv2.passwordChanged" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/css/mainMenuVertical.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginMessage text-center">
        <p>Poštovani, Vaš šifra je uspešno izmenjena. Prijavite se na portal preko stranice <a href="/prijava">Prijava</a>.</p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerContentPlaceHolder" runat="server">
</asp:Content>
