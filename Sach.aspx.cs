using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace BookShopProject
{
    
    public partial class Sach : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEB\DoAn\bookshopProject\BookShopProject\App_Data\QLBanHang.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {this.FillDataList();

            }
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from Sach";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from Sach where MaLoai = '" + maloai + "'";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string masach = ((LinkButton)sender).CommandArgument;
            Context.Items["ms"] = masach;
            Server.Transfer("chitietsach.aspx");
        }

        protected void FillDataList()
        {
            String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEB\DoAn\bookshopProject\BookShopProject\App_Data\QLBanHang.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            String sql = "SELECT * FROM Sach";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            CollectionPager1.PageSize = 9;// Số items muốn hiển thị trên 1 trang.
            CollectionPager1.DataSource = dataTable.DefaultView;
            CollectionPager1.BindToControl = DataList1;
            DataList1.DataSource = CollectionPager1.DataSourcePaged;
        }

        
    }
}
