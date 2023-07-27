using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _BookStore.Models
{
    public class CartItemList
    {
        private List<CartItem> cartitems;
        public CartItemList() 
        {
            cartitems = new List<CartItem>();
        }
        public int Count
        {
            get { return cartitems.Count; }
        }
        public CartItem this[int index]
        {
            get { return cartitems[index]; }
        }
        public CartItem this[string id]
        {
            get
            {
                foreach (CartItem c in cartitems)
                    if(c.Product.BookId==id) return c;
                return null;
                
            }
        }
        public static CartItemList GetCart()
        {
            CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemList();
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }
        public void AddItem(Product product, int quantity)
        {
            CartItem c = new CartItem {  Product = product, Quantity = quantity };
            cartitems.Add(c);
        }
        public void RemoveItem(int index)
        {
            cartitems.RemoveAt(index);
        }
        public void Clear()
        {
            cartitems.Clear();
        }
    }
}