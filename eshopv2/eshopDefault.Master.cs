﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using eshopBL;
using eshopBE;

namespace eshopv2
{
    public partial class eshopDefault : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();

            if (HttpContext.Current.User.Identity.IsAuthenticated)
                ((Label)loginView1.FindControl("lblUsername")).Text = Membership.GetUser().UserName;

            if (loginView1.FindControl("lnkLogin") != null)
                ((HyperLink)loginView1.FindControl("lnkLogin")).NavigateUrl = Page.ResolveUrl("~/prijava?returnUrl=" + Page.Request.RawUrl);
            if (loginView1.FindControl("lnkCreateUser") != null)
                ((HyperLink)loginView1.FindControl("lnkCreateUser")).NavigateUrl = Page.ResolveUrl("~/registracija");

            loadFooter();
            loadSettings();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(Request.RawUrl);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text.Trim() != string.Empty)
                Response.Redirect("~/pretraga?a=" + txtSearch.Text);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            CartBL cartBL = new CartBL();
            lblProductCount.Text = cartBL.GetProductsCount(Session["cartID"].ToString()).ToString();
            lblCartPrice.Text = string.Format("{0:N2}", cartBL.GetTotal(Session["cartID"].ToString()));

            //lblWishListCount.Text = (Page.User.Identity.IsAuthenticated) ? new WishListBL().GetWishListProducts(int.Parse(Membership.GetUser().ProviderUserKey.ToString())).Count().ToString() : "0";
            base.Render(writer);
        }

        private void loadFooter()
        {
            rptFt1.DataSource = new CustomPageBL().GetCustomPagesForCustomPageCategory(1);
            rptFt1.DataBind();

            rptFt2.DataSource = new CustomPageBL().GetCustomPagesForCustomPageCategory(2);
            rptFt2.DataBind();

            rptFt3.DataSource = new CustomPageBL().GetCustomPagesForCustomPageCategory(3);
            rptFt3.DataBind();

            //rptCategories.DataSource = new CategoryBL().GetNestedCategoriesList();
            //rptCategories.DataBind();
        }

        private void loadSettings()
        {
            Settings settings = new SettingsBL().GetSettings();
            lblWorkingHours.Text = settings.WorkingHours;
        }
    }
}