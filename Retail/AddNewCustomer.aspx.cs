using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObjects;
using BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;

namespace Retail
{
    public partial class AddNewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Rocord saved successfully')</script>");
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BLL objBLL = new BLL();
            BO_Retail objRetail = new BO_Retail();

            objRetail.FirstName = txtFirstName.Text;
            objRetail.LastName = txtLastName.Text;
            objRetail.City = txtCity.Text;
            objRetail.Country = txtCountry.Text;
            objRetail.PhoneNo = txtPhoneNo.Text;

            objBLL.AddNewCustomer(objRetail);

            Response.Redirect("~/AddNewCustomer.aspx?alert=success");
        }
    }
}