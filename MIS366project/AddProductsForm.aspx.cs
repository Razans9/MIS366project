using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data;
using System.Data.SqlClient;



namespace MIS366project
{
    public partial class AddProductsForm : System.Web.UI.Page
    {
        String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\d7oom\OneDrive\notepad\MIS366project\MIS366project\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        try
            {
         using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    if (FileUpload1.HasFile)
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Product (name,price,description,categories,picture,startdate,enddate) " +
                            "VALUES(@name,@price,@description,@categories,@picture,@startdate,@enddate)";
                        SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                        FileUpload1.SaveAs(Server.MapPath("~/image/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkPath = "image/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        sqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
                        sqlCommand.Parameters.AddWithValue("@price", TextBox4.Text);
                        sqlCommand.Parameters.AddWithValue("@description", TextBox2.Text);
                        sqlCommand.Parameters.AddWithValue("@categories", TextBox3.Text);
                        sqlCommand.Parameters.AddWithValue("@startdate", TextBox5.Text);
                        sqlCommand.Parameters.AddWithValue("@enddate", TextBox6.Text);
                        sqlCommand.Parameters.AddWithValue("@picture",linkPath);
                        sqlCommand.ExecuteNonQuery();
                        sqlCon.Close();
                    }
                }

              
            }
            catch(Exception ex)
            {
         

            }
        }
    }
}