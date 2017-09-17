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
    public partial class ManageCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

            BLL objBLL = new BLL();
            //DataTable dt = new DataTable();

            //dt = objBLL.GetCustomers();

            DataTable dt = objBLL.GetCustomers();

            gvCustomersView.DataSource = dt;
            gvCustomersView.DataBind();
            

        }
    }
}