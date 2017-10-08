using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInPage
{
    public partial class Success : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Page previousPage = (Page)Context.Handler;
                if (previousPage is MyLogIn)
                {
                    Label1.Text = "Congratulations" + " " + ((MyLogIn)previousPage).getFirstName + " " + ((MyLogIn)previousPage).getLastName;
                    Label2.Text = "Your registration is successful.";
                    Label3.Text = "The information you provided has been saved.";
                }
                

                //this.fname = ((TextBox)previousPage.FindControl("TextBoxFirstName")).Text;
                //this.lname = ((TextBox)previousPage.FindControl("TextBoxLastName")).Text;
            }            
        }
    }
}