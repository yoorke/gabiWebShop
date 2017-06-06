<%@ Page Title="" Language="C#" MasterPageFile="~/eshopDefault.Master" AutoEventWireup="true" CodeBehind="cenaDostave.aspx.cs" Inherits="eshopv2.cenaDostave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%=ResolveUrl("~/css/mainMenuVertical.css") %>" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 page-content">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="heading">Cena dostave</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5">
                <table class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
                        <tr>
                            <th>Masa pošiljke [kg]</th>
                            <th>Cena po jednoj pošiljci [RSD]</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>do 0,5</td>
                            <td>236,00</td>
                        </tr>
                        <tr>
                            <td>0,5 - 1</td>
                            <td>306,00</td>
                        </tr>
                        <tr>
                            <td>1 - 2</td>
                            <td>389,00</td>
                        </tr>
                        <tr>
                            <td>2 - 5</td>
                            <td>487,00</td>
                        </tr>
                        <tr>
                            <td>5 - 10</td>
                            <td>696,00</td>
                        </tr>
                        <tr>
                            <td>10 - 20</td>
                            <td>904,00</td>
                        </tr>
                        <tr>
                            <td>20 - 30</td>
                            <td>1.044,00</td>
                        </tr>
                        <tr>
                            <td>30 - 50</td>
                            <td>1392,00</td>
                        </tr>
                        <tr>
                            <td>50 - 70</td>
                            <td>1879,00</td>
                        </tr>
                        <tr>
                            <td>70 - 100</td>
                            <td>2505,00</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerContentPlaceHolder" runat="server">
</asp:Content>
