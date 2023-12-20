using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Day10AssignmentWebServerControls
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        public object TxtDescription { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;
            LblMsg.Visible = false; 
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {    
            LblMsg.Visible=true;
            LblMsg.Text = "Product Registration Success!!!";
            LblMsg.Text +="<br/>Product Name: "+TxtPName.Text;
            LblMsg.Text +="<br/>Product Catogory: "+listProductCategory.Text;
            LblMsg.Text +="<br/>Product Description"+TxtDescription;  
            LblMsg.Text +="<br/>Product Release Date: "+Calreleasedate.SelectedDate.ToShortDateString();

        }
    }
}
