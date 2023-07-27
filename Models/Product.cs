using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _BookStore.Models
{
    public class Product
    {
        public string BookId { get; set; }
        public string BookName { get; set; }
        public string Author { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public decimal Price { get; set; }
        public string GenreId { get; set; }

    }
}