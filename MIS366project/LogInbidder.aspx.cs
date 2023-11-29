using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MIS366project
{
    public partial class LogInbidder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select count(*) from [Bidder] where email = '" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'", con);
                DataTable dt = new DataTable(); sda.Fill(dt); if (dt.Rows[0][0].ToString() == "1")
                {
                    SqlDataAdapter d = new SqlDataAdapter("Select email from [Bidder] where email = '" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'", con); DataTable t = new DataTable();
                    d.Fill(t);
                    Session["email"] = dt.Rows[0][0]; Response.Redirect("ArtWorksUser.aspx");
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "There is an ERROR";
                }
            }
        }
     }
    }
