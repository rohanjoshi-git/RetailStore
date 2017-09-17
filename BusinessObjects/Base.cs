using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObjects
{
    public class Base
    {
    }

    public class BO_Retail
    {
        public string FirstName;
        public string LastName;
        public string City;
        public string Country;
        public string PhoneNo;

        public DateTime OrderDate;
        public string OrderNumber;
        public int CustomerId;
        public decimal TotalAmount;
    }
}
