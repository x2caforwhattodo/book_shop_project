using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BookShopProject
{
    public partial class chitietsach : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEB\DoAn\bookshopProject\BookShopProject\App_Data\QLBanHang.mdf;Integrated Security=True";
        private string MaSach;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ms"] == null)
                q = "select* from Sach";
            else
            {
                string masach = Context.Items["ms"].ToString();
                q = "select *from Sach where MaSach ='" + masach + "'";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button mua = (Button)sender;
            string MaSach = mua.CommandArgument.ToString();//lay bien Arguement o button
            DataListItem item = (DataListItem)mua.Parent;
            string soluong = ((TextBox)item.FindControl("TextBox1")).Text;
            if (Request.Cookies["TenDN"] == null) return;
            string ten = Request.Cookies["TenDN"].Value;
            SqlConnection con = new SqlConnection(stcn);
            con.Open();
            string query = "select *from HoaDon"
                        + "where TenDN= '" + ten + "' and MaSach= '" + MaSach + "'";
            SqlCommand command = new SqlCommand(query, con);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                reader.Close();
                command = new SqlCommand(
                    "update HoaDon set SoLuong=SoLuong+" + soluong +
                    " where TenDN='" + ten + "'and MaSach='" + MaSach + "'", con);
            }
            else
            {
                reader.Close();
                command = new SqlCommand("insert into HoaDon" + "(TenDN,MaSach,SoLuong) values('"
                        + ten + "','" + MaSach + "'," + soluong + ")", con);
            }
            command.ExecuteNonQuery();
            con.Close();


        }
    }
    }
