using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class Task : System.Web.UI.Page
    {
        TasksEntities1 tasks = new TasksEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var c = from City in tasks.Cities select City;
                cityList.DataSource = c.ToList();
                cityList.DataTextField = "cityName";
                cityList.DataValueField = "cityID";
                cityList.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string photo = "";
            if (userImg.HasFile)
            {
                photo = "/Image/" + userImg.FileName;
                userImg.SaveAs(Server.MapPath("/Image/") + userImg.FileName);
            }
            Customer add = new Customer();
            add.customerName = txtName.Text;
            add.Age = Convert.ToInt32(txtAge.Text);
            add.City = Convert.ToInt32(cityList.SelectedValue);
            add.Phone = Convert.ToInt32(txtPhone.Text);
            add.Email = txtEmail.Text;
            add.Photo = photo;

            tasks.Customers.Add(add);
            tasks.SaveChanges();

            Response.Redirect("Show.aspx");
        }
    }
}