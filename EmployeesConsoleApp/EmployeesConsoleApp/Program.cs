using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EmployeesConsoleApp.Models;

namespace EmployeesConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var p = new Program();
            p.Run();
        }

        public void Run()
        {
            DisplayEmployees();
            UpdateSalaries();
        }

        public void UpdateSalaries()
        {
            var ormAccess = new ORMaccess();
            ormAccess.UpdateSalaries();
        }

        public void DisplayEmployees()
        {
            var ormAccess = new ORMaccess();
            var employees = ormAccess.GetAllEmployees();
            var jobPositions = ormAccess.GetAllJobPositions();
            var pensionFunds = ormAccess.GetAllPensionFunds();
            foreach (var employee in employees)
            {
                var jobPosition = jobPositions.FirstOrDefault(j => j.Id == employee.JobPosition);
                var pensionFund = pensionFunds.FirstOrDefault(p => p.EmployeeId == employee.Id);
                DisplayEmployeeInformation(employee, jobPosition, pensionFund);
            }
            Console.ReadLine();
        }

        public void DisplayEmployeeInformation(Employee employee, JobPosition jobPosition, PensionFund pensionFund)
        {
            Console.WriteLine("Emp. {0}: {1} {2} is a {3} earning {4}, with {5} in their pension fund", employee.Id, employee.FirstName, employee.LastName, jobPosition.Title, employee.Salary, pensionFund.Amount);
        }
    }
}
