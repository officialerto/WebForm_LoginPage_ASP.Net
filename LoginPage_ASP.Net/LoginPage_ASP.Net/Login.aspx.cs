﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LoginPage_ASP.Net
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog=WebFormLoginDB; Integrated Security=True;"))
            {
                con.Open();
                string query = "SELECT COUNT(1) FROM tblUser WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query,con);
                sqlCmd.Parameters.AddWithValue("@username",txtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password",txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                if (count==1)
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }

            }



        }
    }
}