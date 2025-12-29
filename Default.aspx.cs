using System;
using System.Collections.Generic;

namespace BakeryWebsite
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var products = new List<Product>
                {
                    new Product { Name="Chocolate Cake", Description="Rich chocolate cake", Price=15.99m, ImageUrl="Images/chocolate_cake.jpg" },
                    new Product { Name="Croissant", Description="Flaky buttery croissant", Price=3.50m, ImageUrl="Images/croissant.jpg" },
                    new Product { Name="Cupcake", Description="Vanilla cupcake with frosting", Price=2.99m, ImageUrl="Images/cupcake.jpg" }
                };

                rptProducts.DataSource = products;
                rptProducts.DataBind();
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            lblMessage.Text = $"Thank you, {txtName.Text}! Your message has been sent.";
            txtName.Text = txtEmail.Text = txtMessage.Text = "";
        }
    }

    public class Product
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public string ImageUrl { get; set; }
    }
}
