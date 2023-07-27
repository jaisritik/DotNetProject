using _BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _BookStore
{
    public partial class CheckOut : System.Web.UI.Page
    {
        private Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                customer = (Customer)Session["Customer"];
                LoadCustomerData();
            }
        }


        private void LoadCustomerData()
        {
            if(customer != null)
            {
                txtFirstName.Text = customer.FirstName;
                ddlState.SelectedValue = customer.State;
                rblContactVia.SelectedValue = customer.ContactVia;
                cblAboutList.Items[0].Selected = customer.NewProductsInfo;
                cblAboutList.Items[1].Selected = customer.SpecialPromosInfo;
                cblAboutList.Items[2].Selected = customer.NewRevisionsInfo;
                cblAboutList.Items[3].Selected = customer.LocalEventsInfo;
            }
        }

        private void GetCustomerData()
        {
            if( customer == null ) customer = new Customer();
            {
                customer.FirstName = txtFirstName.Text;
                customer.State= ddlState.SelectedValue;
                customer.ContactVia = rblContactVia.SelectedValue;
                customer.NewProductsInfo = cblAboutList.Items[0].Selected;
                customer.SpecialPromosInfo= cblAboutList.Items[1].Selected;
                customer.NewRevisionsInfo=cblAboutList.Items[2].Selected;
                customer.LocalEventsInfo=cblAboutList.Items[3].Selected;
                Session["Customer"]= customer;
            }
        }

        // get all the customer data 
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                GetCustomerData();
                Response.Redirect("~/CheckOut.aspx");
            }
        }

        // to redirect the Order page and remove all data 
        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            Session.Remove("Customer");
            Response.Redirect("~/Order.aspx");
        }
    }
}