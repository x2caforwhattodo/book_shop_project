using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace bookShopProject
{
    public partial class loginaspx : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\ASP\DO_AN_ASP\DO_AN_ASP\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string ten = this.Login1.UserName;
            string matkhau = this.Login1.Password;
            string sql = "select * from TK where TenDN='" + ten + "' and MatKhau = '" + matkhau + "'";
            DataTable table = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, stcn);
                da.Fill(table);
            }
            catch (SqlException err)
            {
                Response.Write("<b>Error</b>" + err.Message + "<p/> ");
            }
            if (table.Rows.Count != 0)
            {
                Response.Cookies["TenDN"].Value = ten;
                Server.Transfer("register.aspx");
            }
            else this.Login1.FailureText = "Tên Đăng Nhập hay Mật Khẩu không đúng! ";
        }
    }
}