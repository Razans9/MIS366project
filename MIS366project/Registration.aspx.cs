using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS366project
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try

            {

                SqlDataSource1.Insert();
                Response.Redirect("LogInBidder.aspx");

                Label9.Text = "Thank you for registering!";
                Label9.Visible = true;

            }
            catch (Exception ex )
            { }
        }
    }
}