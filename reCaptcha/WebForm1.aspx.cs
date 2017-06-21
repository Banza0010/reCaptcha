using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace reCaptcha
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spRegisterUser",con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parName = new SqlParameter("@Name", TextBox1.Text);
                SqlParameter parEmail = new SqlParameter("@Email", TextBox2.Text);
                SqlParameter parPass = new SqlParameter("@Password", TextBox3.Text);

                cmd.Parameters.Add(parName);
                cmd.Parameters.Add(parEmail);
                cmd.Parameters.Add(parPass);

                con.Open();
                cmd.ExecuteNonQuery();
            }
          //  lblMessage.Text = "Registration successful";

        }
    }
}