using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DesktopModules_QuanLyMauDon_Source_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string hoVaTen = hoVaTenTxt.Text;
        string mssv = mssvTxt.Text;
        string ngaySinh = ngaySinhTxt.Text;
        string nganhHoc = nganhHocTxt.Text;
        string totNghiepKhoa = totNghiepKhoaTxt.Text;
        string totNghiepKhoaNgay = totNghiepKhoaNgayTxt.Text;
        string soBanSao = soBanSaoTxt.Text;
        string lyDo = lyDoTxt.Text;

        //Get all mau don content
        string text = System.IO.File.ReadAllText(Server.MapPath("~/DesktopModules/QuanLyMauDon/Source/Template/Mau07-SV-DT_CTSV-CapBanSaoBangTotNghiep.html"));

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //RadEditor1.ExportToPdf();
    }
}