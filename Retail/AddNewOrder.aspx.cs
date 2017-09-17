using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObjects;
using BusinessLogicLayer;

namespace Retail
{
    public partial class AddNewOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Record saved successfully')</script>");
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BO_Retail objRetail = new BO_Retail();
            BLL objBLL = new BLL();

            objRetail.OrderNumber = txtOrderNumber.Text;
            objRetail.OrderDate = Convert.ToDateTime(txtOrderDate.Text);
            objRetail.CustomerId = Convert.ToInt32(ddlCustomer.Text);
            objRetail.TotalAmount = Convert.ToDecimal(txtTotalAmount.Text);

            objBLL.AddNewOrder(objRetail);

            Response.Redirect("~/AddNewOrder.aspx?alert=success");
        }
    }
}