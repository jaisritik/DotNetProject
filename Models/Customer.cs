using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace _BookStore.Models
{
    public class Customer
    {   
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string ContactVia { get; set; }
        public bool NewProductsInfo { get; set; }
        public bool LocalEventsInfo { get; set; }
        public bool NewRevisionsInfo { get; set; }
        public bool SpecialPromosInfo { get; set; }

        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }

        
    }
    
}