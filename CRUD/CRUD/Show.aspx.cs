using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class Show : System.Web.UI.Page
    {
        TasksEntities1 tasks = new TasksEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            var customers = tasks.Customers.ToList();
            var cities = tasks.Cities.ToList();

            var all = (from customer in customers
                       join city in cities
                      on customer.City equals city.cityID
                       select new
                       {
                           customer.customerName,
                           customer.Age,
                           customer.Phone,
                           customer.Email,
                           city.cityName,
                           customer.Photo,
                           //Photo= HttpUtility.HtmlDecode($"<img src='{customer.Photo}'/>")
                       }).ToList();
            allUser.DataSource = all;
            allUser.DataBind();


            // Count Of Users 

            lblNum.Text = (from item in customers select item).Count().ToString();
            lblAvg.Text= (from item in customers select item.Age).Average().ToString();
            lblMax.Text = (from item in customers select item.Age).Max().ToString();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var stringNumber = txtSearch.Text;
            
            int numericValue;
            bool isNumber = int.TryParse(stringNumber, out numericValue);

            if (!isNumber)
            {

                var search = from item in tasks.Customers
                             where item.customerName.Contains(stringNumber)
                             select item;

               

                allUser.DataSource = search.ToList();
                allUser.DataBind();
            }
            else
            {
                var search = from item in tasks.Customers
                             where item.customerId==numericValue
                             select item;

               

                allUser.DataSource = search.ToList();
                allUser.DataBind();

            }
            //string name = txtSearch.Text;
            //var customers = tasks.Customers.ToList();
            //var cities = tasks.Cities.ToList();


            //var search = from item in customers
            //             where item.customerName.Contains(name)
            //             select item;

            //var all = (from customer in search
            //           join city in cities
            //          on customer.City equals city.cityID
            //           select new
            //           {
            //               customer.customerName,
            //               customer.Age,
            //               customer.Phone,
            //               customer.Email,
            //               customer.Photo,
            //               city.cityName

            //           }).ToList();

            //allUser.DataSource = all;
            //allUser.DataBind();


        }

       
    }
}