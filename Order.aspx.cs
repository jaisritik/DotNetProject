using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _BookStore.Models;

namespace _BookStore
{
    public partial class Order : System.Web.UI.Page
    {
        private Product selectProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cookkie fuction is used to display the Welcome message with user name when user login the page

            HttpCookie firstname = Request.Cookies["FirstName"];
            if(firstname!=null)
            {
                lblWelcome.Text = "<h4> Welcome Back, " + firstname.Value + "!<h4>";
            }

            if (!IsPostBack) ddlProducts.DataBind();
            selectProduct = this.GetSelectedProduct();
            lblName.Text = selectProduct.BookName;
            lblSDes.Text = selectProduct.ShortDescription;
            lblLDes.Text = selectProduct.LongDescription;
            lblPrice.Text = selectProduct.Price.ToString("c") + "each";

        }

        //------ this function is used to get data from sql and display the data in web page
        private Product GetSelectedProduct()
        {
            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = string.Format("BookId = '{0}'", ddlProducts.SelectedValue);
            DataRowView row = productsTable[0];

            Product p = new Product();
            p.BookId = row["BookId"].ToString();
            p.BookName = row["BookName"].ToString();
            p.ShortDescription = row["ShortDescription"].ToString();
            p.LongDescription = row["LongDescription"].ToString();
            p.Author = row["Author"].ToString();
            p.Price = (decimal)row["Price"];
            return p;
        }

        //----------to redirect the cart page and also add the book item with quantity in cart page------
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectProduct.BookId];

                if(cartItem==null)
                {
                    cart.AddItem(selectProduct, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("~/Cart.aspx");
            }
        }

        protected void btncart_Click(object sender, EventArgs e)
        {

        }
    }
}