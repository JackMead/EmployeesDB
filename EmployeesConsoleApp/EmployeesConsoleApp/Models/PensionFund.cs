using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;

namespace EmployeesConsoleApp.Models
{
    class PensionFund
    {
        [Key]
        public int EmployeeId { get; set; }
        public int Amount { get; set; }
        public int Provider { get; set; }
        public DateTime LastContributionDate { get; set; }
    }
}
