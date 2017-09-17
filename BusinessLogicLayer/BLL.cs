using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObjects;
using DataAccessLayer;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLogicLayer
{
    public class BLL
    {
        public BLL()
        {

        }

        public DataTable GetCustomers()
        {
            DAL objDAL = new DAL();
            DataTable dt = new DataTable();

            SqlParameter[] parameters = new SqlParameter[0];

            dt = objDAL.ExecuteDTByProcedure("SP_GetAllCustomers", parameters);

            return dt;
        }


        public void AddNewCustomer(BO_Retail objRetail)
        {
            DAL objDAL = new DAL();
            DataTable dt = new DataTable();

            SqlParameter[] parameters = new SqlParameter[5];

            parameters[0] = objDAL.AddParameter("@FirstName", objRetail.FirstName, SqlDbType.VarChar, 100);
            parameters[1] = objDAL.AddParameter("@LastName", objRetail.LastName, SqlDbType.VarChar, 100);
            parameters[2] = objDAL.AddParameter("@City", objRetail.City, SqlDbType.VarChar, 100);
            parameters[3] = objDAL.AddParameter("@Country", objRetail.Country, SqlDbType.VarChar, 100);
            parameters[4] = objDAL.AddParameter("@Phone", objRetail.PhoneNo, SqlDbType.VarChar, 100);

            dt = objDAL.ExecuteDTByProcedure("SP_AddNewCustomer", parameters);

        }


        public void AddNewOrder(BO_Retail objRetail)
        {
            DAL objDAL = new DAL();
            DataTable dt = new DataTable();

            SqlParameter[] parameters = new SqlParameter[4];

            parameters[0] = objDAL.AddParameter("@OrderDate", objRetail.OrderDate, SqlDbType.DateTime, 100);
            parameters[1] = objDAL.AddParameter("@OrderNumber", objRetail.OrderNumber, SqlDbType.VarChar, 10);
            parameters[2] = objDAL.AddParameter("@CustomerId", objRetail.CustomerId, SqlDbType.Int, 100);
            parameters[3] = objDAL.AddParameter("@TotalAmount", objRetail.TotalAmount, SqlDbType.Decimal, 12);

            dt = objDAL.ExecuteDTByProcedure("SP_AddNewOrder", parameters);

        }

    }
}
