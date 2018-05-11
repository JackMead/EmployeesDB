using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Dapper;
using Dapper.Contrib.Extensions;
using EmployeesConsoleApp.Models;

namespace EmployeesConsoleApp
{
    class ORMaccess
    {

        private readonly string connectionString =
            new SqlConnectionStringBuilder
            {
                DataSource = "localhost\\MSSQLSERVER01",
                IntegratedSecurity = true,
                InitialCatalog = "MyCompany"
            }.ConnectionString;

        public IEnumerable<Employee> GetAllEmployees()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                return connection.GetAll<Employee>();
            }
        }

        public IEnumerable<PensionFund> GetAllPensionFunds()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                return connection.GetAll<PensionFund>();
            }
        }

        public IEnumerable<JobPosition> GetAllJobPositions()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                return connection.GetAll<JobPosition>();
            }
        }

        public void UpdateSalaries()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Execute("UpdatePensionFunds", CommandType.StoredProcedure);
            }
        }
    }
}
