<%@ Page Language="C#" MasterPageFile="~/eshopDefault.Master" AutoEventWireup="true" CodeBehind="customPage.aspx.cs" Inherits="eshopv2.customPage" Title="Untitled Page" %>
<%@ Register Src="user_controls/Banner.ascx" TagName="Banner" TagPrefix="banner" %>
<%@ Register Src="user_controls/product_fp.ascx" TagName="ProductFP" TagPrefix="ws2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="canonicalUrl" runat="server"></asp:Literal>
    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/css/mainMenuVertical.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="col-xs-2 left-column visible-lg visible-md">
        <banner:Banner ID="banner1" runat="server" Position="FP1" />
        <banner:Banner ID="banner2" runat="server" Position="FP2" />        
    </div>--%>
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 main-content" id="customPage">
        <div class="row">
            <h1 class="heading"><asp:Literal ID="lblHeading" runat="server"></asp:Literal></h1>
        
            <div id="divContent" runat="server"></div>
        </div>
        <div class="row margin-top-2">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 padding-left-0 padding-right-0 margin-top-05 product-fp-col">
                        <ws2:ProductFP ID="productFP" runat="server" ProductItem='<%#Container.DataItem %>' />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
