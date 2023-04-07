using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanDienThoai.Models;
using System.Data.SqlClient;
namespace WebBanDienThoai
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                nap_du_lieu();
            }
            if (Session["USER"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
        private void nap_du_lieu()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)
            {
                //Liên kết dữ liệu cho gvgiohang
                gvgiohang.DataSource = cart.Items;
                gvgiohang.DataBind();
                //Gán thành tiền cho label
                lbTongtien.Text = cart.TongTien.ToString("#,##0 đ");
            }
        }

        protected void gvgiohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //b1. Lấy mã sản phẩm cần xóa khỏi giỏ hàng
            int masp = int.Parse(gvgiohang.DataKeys[e.RowIndex].Value.ToString());
            //b2. lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3. Xóa sản phẩm khỏi giỏ
            cart.Delete(masp);
            //b4. Nạp lại dữ liệu cho gvGioHang (Cập nhật lại giao diện)
            nap_du_lieu();
        }

        protected void gvgiohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int masp = int.Parse(gvgiohang.DataKeys[e.RowIndex].Value.ToString());
            int soluong = int.Parse(((TextBox)gvgiohang.Rows[e.RowIndex].FindControl("txtsoluong")).Text);
            //b2. Lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3. Cập nhật lại số lượng
            cart.Update(masp, soluong);
            //b4.Nạp lại dữ liệu
            nap_du_lieu();
        }

        protected void btdathang_Click(object sender, EventArgs e)
        {
            // Lấy thông tin khách hàng và đơn hàng từ trang web
            //string madon = txthoten.Text;

            //string ngaydat = txtsodt.Text;
            //string manguoidung = txtsodt.Text;



            //// Mở kết nối đến cơ sở dữ liệu
            //string connectionString = "Data Source=.;Initial Catalog=DienThoaiDB;User ID=sa;Password=sa";
            //SqlConnection connection = new SqlConnection(connectionString);
            //connection.Open();

            //// Tạo đối tượng Command để thực hiện truy vấn
            //SqlCommand command = new SqlCommand("INSERT INTO DonHang (MaDon, NgayDat, MaNguoiDung) VALUES (@madon, @ngaydat, @manguoidung)", connection);

            //// Thêm các tham số vào đối tượng Command
            //command.Parameters.AddWithValue("@madon", madon);
            //command.Parameters.AddWithValue("@ngaydat", ngaydat);
            //command.Parameters.AddWithValue("@manguoidung", manguoidung);


            //// Thực thi truy vấn
            //command.ExecuteNonQuery();

            //// Đóng kết nối và giải phóng tài nguyên
            //connection.Close();
            //command.Dispose();
        }
    }
}