<%@ Page Title="" Language="C#" MasterPageFile="~/eshopDefault.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="eshopv2.eshopDefault1" %>
<%@ Register Src="user_controls/Slider.ascx" TagName="Slider" TagPrefix="slider" %>
<%@ Register Src="user_controls/MainMenuVerticalV2.ascx" TagName="MainMenuVerticalV2" TagPrefix="YT" %>
<%@ Register Src="user_controls/Banner.ascx" TagName="Banner" TagPrefix="YT" %>
<%@ Register Src="user_controls/product_slider.ascx" TagName="ProductSlider" TagPrefix="ps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" id="camera-css" href="<%=ResolveUrl("~/css/camera.css") %>" type="text/css" />
    <link rel="stylesheet" href="<%=ResolveUrl("~/css/mainMenuVertical.css") %>" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <!--<div class="col-lg-3 padding-left-0 padding-right-0">
            <%--<YT:MainMenuVerticalV2 ID="mainMenuVerticalV2" runat="server" />--%>
        </div>-->
        <div class="col-md-12">
            <slider:Slider ID="slider1" runat="server" SliderID="12" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 padding-left-0 padding-right-0">
            <%--<YT:Banner ID="banner1" runat="server" Position="FP1" />--%>
            <a class="info-box" href="#">
                <span class="icon"><span class="fa fa-fw fa-truck"></span></span>
                <div class="description">
                    <span class="text">Besplatna dostava</span>
                    <span class="text second">saznajte više</span>
                    </div>
            </a>
        </div>
        <div class="col-md-3 padding-left-0 padding-right-0">
            <%--<YT:Banner ID="banner2" runat="server" Position="FP2" />--%>
            <a class="info-box" href="#">
                <span class="icon"><span class="fa fa-fw fa-credit-card"></span></span>
                <div class="description">
                    <span class="text"><strong>GABI kartica</strong></span>
                    <span class="text second">sakupljajte bodove</span>
                </div>
            </a>
        </div>
        <div class="col-md-3 padding-left-0 padding-right-0">
            <%--<YT:Banner ID="banner3" runat="server" Position="FP3" />--%>
            <a class="info-box" href="#">
                <span class="icon"><span class="fa fa-fw fa-cc-visa"></span></span>
                <div class="description">
                    <span class="text"><strong>Online</strong> plaćanje karticama</span>
                    <span class="text second">saznajte više</span>
                </div>
            </a>
        </div>
        <div class="col-md-3 padding-right-0 bannerFP4 padding-left-0">
            <%--<YT:Banner ID="banner4" runat="server" Position="FP4" />--%>
            <a class="info-box" href="#">
                <span class="icon"><span class="fa fa-fw fa-facebook"></span></span>
                <div class="description">
                    <span class="text">Posetite na na Facebook-u</span>
                    <span class="text second">posetite nas</span>
                </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 padding-left-0 padding-right-0 bannerFP5">
            <YT:Banner ID="banner5" runat="server" Position="FP5" />
        </div>
    </div>
    <div class="row product_slider margin-top-05">
        <div class="col-lg-12">
            <asp:Repeater ID="rptPromotions" runat="server" OnItemDataBound="rptPromotions_ItemDataBound">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HiddenField ID="lblPromotionID" runat="server" Value='<%#Eval("promotionID") %>' />
                    <ps:ProductSlider ID="productSlider1" runat="server" Type="akcija" />
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Repeater ID="rptCategories" runat="server" OnItemDataBound="rptCategories_ItemDataBound">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HiddenField ID="lblCategoryID" runat="server" Value='<%#Eval("categoryID") %>' />
                    <asp:HiddenField ID="lblNumberOfProducts" runat="server" Value='<%#Eval("numberOfProducts") %>' />
                    <asp:HiddenField ID="lblFirstPageOrderBy" runat="server" Value='<%#Eval("firstPageOrderBy") %>' />
                    <ps:ProductSlider ID="productSlider2" runat="server" Type="proizvodi" />
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </div><!--col-->
    </div><!--product-slider-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerContentPlaceHolder" runat="server">
    <script src="<%=ResolveUrl("~/js/jquery.mobile.customized.min.js") %>"></script>
    <script src="<%=ResolveUrl("~/js/jquery.easing.1.3.js") %>"></script>
    <script src="<%=ResolveUrl("~/js/camera.js") %>"></script>
    <script src="<%=ResolveUrl("~/js/camera_start.js") %>"></script>

    <script>
        //$(document).ready(function () {
            //if ($(window).width() >= 1024) {
                //$('.cd-dropdown').addClass('dropdown-is-active');
                //$('.cd-dropdown-trigger').hide();
            //}
            //else if ($(window).width() < 1024) {
                //$('.cd-dropdown-trigger').show();
            //}
        //})
    </script>
</asp:Content>
