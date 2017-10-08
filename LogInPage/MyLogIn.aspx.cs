using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInPage
{
    public partial class MyLogIn : System.Web.UI.Page
    {
        string firstName;
        string lastName, address, city, postalCode, age, password, email, altEmail, phoneNum;
        string province;       
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBoxAddMember.Checked == true)
            {
                this.firstName = TextBoxFirstName.Text;
                this.lastName = TextBoxLastName.Text;
                this.address = TextBoxStAddress.Text;
                this.city = TextBoxCity.Text;
                this.province = DropDownListProvince.SelectedValue;
                this.postalCode = TextBoxPostalCode.Text;
                this.age = TextBoxAge.Text;
                this.password = TextBoxPwd.Text;
                this.email = TextBoxEmail.Text;
                this.altEmail = TextBoxAltEmail.Text;
                this.phoneNum = TextBoxPhoneNum.Text;

                if (Page.IsValid)
                {
                    //Response.Redirect("Success.aspx");
                    Label1.Text = "Your information has been saved";
                    Server.Transfer("MyLogIn.aspx");
                }
            }
            else
            {
                if (Page.IsValid)
                {
                    Server.Transfer("Success.aspx");
                }                    

            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {          
            TextBoxFirstName.Text = string.Empty;
            TextBoxLastName.Text = string.Empty;
            TextBoxStAddress.Text = string.Empty;
            TextBoxCity.Text = string.Empty;
            DropDownListProvince.SelectedValue = "Select a province";
            TextBoxPostalCode.Text = string.Empty;
            TextBoxAge.Text = string.Empty;
            TextBoxPwd.Text = string.Empty;
            TextBoxCPwd.Text = string.Empty;
            TextBoxEmail.Text = string.Empty;
            TextBoxAltEmail.Text = string.Empty;
            TextBoxPhoneNum.Text = string.Empty;
        }
        
        public string getFirstName
        {
            get
            {
                return TextBoxFirstName.Text;
            }
        }
        public string getLastName
        {
            get
            {
                return TextBoxLastName.Text;

            }
        }

    }
}