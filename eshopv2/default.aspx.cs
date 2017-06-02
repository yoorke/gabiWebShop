using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eshopBL;
using System.Web.UI.HtmlControls;

namespace eshopv2
{
    public partial class eshopDefault1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.FindControl("mainMenuVertical").Visible = true;
            if(!Page.IsPostBack)
            {
                loadPromotions();
                loadCategories();
                loadSlider();
            }
        }

        private void loadPromotions()
        {
            rptPromotions.DataSource = new PromotionBL().GetPromotions(false, true, null);
            rptPromotions.DataBind();
        }

        private void loadCategories()
        {
            rptCategories.DataSource = new CategoryBL().GetCategoriesForFirstPage();
            rptCategories.DataBind();
        }

        protected void rptPromotions_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                user_controls.product_slider productSlider = (user_controls.product_slider)e.Item.FindControl("productSlider1");
                ProductBL productBL = new ProductBL();
                productSlider.NumberOfProducts = 6;
                productSlider.Products = productBL.GetProductsForPromotion(int.Parse(((HiddenField)e.Item.FindControl("lblPromotionID")).Value));
                //productSlider.Type = "akcija";
                ((Literal)productSlider.FindControl("lblPrev")).Text = @"<a id=""prev"" runat=""server"" href=" + "#carousel" + ((HiddenField)e.Item.FindControl("lblPromotionID")).Value + @" data-slide=""prev""><img src=" + Page.ResolveUrl("~/images/prev_next.gif") + @" alt=""Prethodni"" /></a>";
                ((Literal)productSlider.FindControl("lblNext")).Text = @"<a id=""next"" runat=""server"" href=" + "#carousel" + ((HiddenField)e.Item.FindControl("lblPromotionID")).Value + @" data-slide=""next"" class=""next_button""><img src=" + Page.ResolveUrl("~/images/prev_next.gif") + @" alt=""Sledeći"" /></a>";
                ((Literal)productSlider.FindControl("lblCarousel")).Text = @"<div id=" + "carousel" + ((HiddenField)e.Item.FindControl("lblPromotionID")).Value + @" class=""carousel slide"" data-ride="""" runat=""server"">";
                ((Literal)productSlider.FindControl("lblCarouselClose")).Text = "</div>";
            }
        }

        protected void rptCategories_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                user_controls.product_slider productSlider = (user_controls.product_slider)e.Item.FindControl("productSlider2");
                ProductBL productBL = new ProductBL();
                productSlider.NumberOfProducts = 6;
                productSlider.Products = productBL.GetProductsForFirstPage(int.Parse(((HiddenField)e.Item.FindControl("lblCategoryID")).Value), -1, 8, "Slučajni");
                //productSlider.Type = "proizvodi";
                ((HtmlControl)productSlider.FindControl("carouselexample")).Attributes["id"] = "carousel" + ((HiddenField)e.Item.FindControl("lblCategoryID")).Value;
                ((Literal)productSlider.FindControl("lblPrev")).Text = @"<a id=""prev"" runat=""server"" href=" + "#carousel" + ((HiddenField)e.Item.FindControl("lblCategoryID")).Value + @" data-slide=""prev""><img src=" + Page.ResolveUrl("~/images/prev_next.gif") + @" alt=""Prethodni"" /></a>";
                ((Literal)productSlider.FindControl("lblNext")).Text = @"<a id=""next"" runat=""server"" href=" + "#carousel" + ((HiddenField)e.Item.FindControl("lblCategoryID")).Value + @" data-slide=""next"" class=""next_button"" ><img src=" + Page.ResolveUrl("~/images/prev_next.gif") + @" alt=""Sledeći"" /></a>";
                ((Literal)productSlider.FindControl("lblCarousel")).Text = @"<div id=" + "carousel" + ((HiddenField)e.Item.FindControl("lblCategoryID")).Value + @" class=""carousel slide"" data-ride="""" runat=""server"">";
                ((Literal)productSlider.FindControl("lblCarouselClose")).Text = "</div>";
            }
        }

        private void loadSlider()
        {
            slider1.loadSlider();
        }
    }
}