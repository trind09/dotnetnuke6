using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Telerik.Pdf;
using DotNetNuke.Entities.Portals;
using System.Collections;
using DotNetNuke.UI.Skins.Controls;

public partial class DesktopModules_QuanLyMauDon_Source_SourceControl : System.Web.UI.UserControl
{
    DotNetNuke.Entities.Users.UserInfo currentUser = DotNetNuke.Entities.Users.UserController.GetCurrentUserInfo();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                ddlLoaiTaiLieu.Items.Add(new ListItem("Cấp Bản Sao Bằng Tốt Nghiệp", "Mau07-SV-DT_CTSV-CapBanSaoBangTotNghiep.html"));
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (currentUser != null)
        {
            DateTime? birthDay = ngaySinhPicker.SelectedDate;
            DateTime? graduationDate = totNghiepKhoaPicker.SelectedDate;
            string hoVaTen = hoVaTenTxt.Text;
            string mssv = mssvTxt.Text;
            string ngaySinh = birthDay.Value.ToShortDateString();
            string nganhHoc = nganhHocTxt.Text;
            string totNghiepKhoa = totNghiepKhoaTxt.Text;
            string totNghiepKhoaNgay = graduationDate.Value.ToShortDateString();
            string soBanSao = soBanSaoTxt.Text;
            string lyDo = lyDoTxt.Text;
            string mauDonFileName = ddlLoaiTaiLieu.SelectedValue;

            //Get all mau don content
            string text = System.IO.File.ReadAllText(Server.MapPath("~/DesktopModules/QuanLyMauDon/Source/Template/" + mauDonFileName));
            text = text.Replace("[[name]]", hoVaTen);
            text = text.Replace("[[MSSV]]", mssv);
            text = text.Replace("[[bitthday]]", ngaySinh);
            text = text.Replace("[[nganhhoc]]", nganhHoc);
            text = text.Replace("[[khoatotnghiep]]", totNghiepKhoa);

            if (!System.IO.Directory.Exists(Server.MapPath("~/DesktopModules/QuanLyMauDon/Source/Export/" + currentUser.UserID)))
            {
                System.IO.Directory.CreateDirectory(Server.MapPath("~/DesktopModules/QuanLyMauDon/Source/Export/" + currentUser.UserID));
            }
            //Write new mau don to file
            System.IO.File.WriteAllText(Server.MapPath("~/DesktopModules/QuanLyMauDon/Source/Export/" + currentUser.UserID + "/" + mauDonFileName), text);

            //Get new mau don file url
            string currentHostURL = GetCurrentHostURL();
            string fileUrl = currentHostURL + "/DesktopModules/QuanLyMauDon/Source/Export/" + currentUser.UserID + "/" + mauDonFileName;
            lblIsPrintFile.Text = fileUrl;
        }
    }

    public string GetCurrentHostURL()
    {
        PortalSettings portalSettings = new PortalSettings();
        string baseUrl = (Request.IsSecureConnection ? "https://" : "http://") + portalSettings.DefaultPortalAlias;
        return baseUrl;
    }
}