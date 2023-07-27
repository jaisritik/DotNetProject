using _BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _BookStore
{
    public partial class Cart : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = CartItemList.GetCart();
            if (!IsPostBack) this.DisplayCart();
        }

        // remove book item one by one in cart page 
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if(cart.Count > 0)
            {
                if(lstCart.SelectedIndex > -1)
                {
                    cart.RemoveItem(lstCart.SelectedIndex);
                    this.DisplayCart();
                }
                else
                {
                    lblMessage.Text = "Please select the item to remove.";
                }
            }
        }

        private void DisplayCart()
        {
            lstCart.Items.Clear();

            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(cart[i].Display());
            }
        }

        // clear all book item on one click 
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if(cart.Count>0)
            {
                cart.Clear();
                lstCart.Items.Clear();
            }
        }

        // to redirect the CheckOut page
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("~/CheckOut");
            }
        }
    }
}
