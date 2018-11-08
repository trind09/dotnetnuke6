<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="DesktopModules_QuanLyMauDon_Source_WebUserControl" %>
<%@ Register TagPrefix="dnn" 
    Namespace="DotNetNuke.Web.Client.ClientResourceManagement" 
    Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<dnn:DnnCssInclude runat="server"
    FilePath="~/DesktopModules/QuanLyMauDon/Source/Style/Style.css" />

<table ID="tbl1" runat="server" style="width: 100%;">
  <thead>
  <tr>
     <th style="font-size: x-large; text-align: center" colspan="2">PHIẾU ĐỀ NGHỊ CẤP BẢN SAO BẰNG TỐT NGHIỆP</th>
  </tr>
  </thead>
  <tbody>
  <tr runat="server" id="Tr1">
      <td style="width: 25%; padding-right: 5px;">Họ và tên:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="hoVaTenTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr2">
      <td style="width: 25%; padding-right: 5px;">MSSV:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="mssvTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr3">
      <td style="width: 25%; padding-right: 5px;">Ngày sinh:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="ngaySinhTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into date text box--%>
      </td>
  </tr>
  <tr runat="server" id="Tr4">
      <td style="width: 25%; padding-right: 5px;">Ngành học:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="nganhHocTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr5">
      <td style="width: 25%;">Tốt nghiệp khóa:</td>
      <td style="width: 75%;">
          <table class="hundred_percent_width">
              <tr>
                  <td><asp:TextBox ID="totNghiepKhoaTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox></td>
                  <td style="padding-left:5px;"><asp:TextBox ID="totNghiepKhoaNgayTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into date text box--%></td>
              </tr>
          </table>
   </td>
  </tr>
  <tr runat="server" id="Tr6">
      <td style="width: 25%; padding-right: 5px;">Số bản sao đề nghị cấp:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="soBanSaoTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into number text box--%>
      </td>
  </tr>
  <tr runat="server" id="Tr7">
      <td style="width: 25%; padding-right: 5px;">Lý do:</td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:TextBox ID="lyDoTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into textArea--%>
      </td>
  </tr>
  <tr runat="server" id="Tr8">
      <td style="width: 25%; padding-right: 5px;"></td>
      <td style="width: 75%; padding-left: 5px;">
          <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />&nbsp;<input type="reset" value="Xóa" />
      </td>
  </tr>
  </tbody>
  <tfoot>
  <tr>
      <td style="background-color: forestgreen; text-align: center; font-size: large;" colspan="2">Copyright 2017 by Khoa Y - Đại Học Quốc Gia Thành Phố Hồ Chí Minh</td>
  </tr>
  </tfoot>
</table>


 <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <div class="demo-containers">
        <div class="demo-container">
            <telerik:RadButton RenderMode="Lightweight" ID="Button1" Text="Export RadEditor content to PDF" runat="server"
                OnClick="Button1_Click" CssClass="export-button">
            </telerik:RadButton>
            <telerik:RadEditor RenderMode="Lightweight" ID="RadEditor1" runat="server" ContentFilters="DefaultFilters,PdfExportFilter">
                <ExportSettings OpenInNewWindow="true">
                </ExportSettings>
                <Content>
                </Content>
                <Modules>
                    <telerik:EditorModule Name="RadEditorHtmlInspector" Enabled="false" />
                    <telerik:EditorModule Name="RadEditorNodeInspector" Enabled="false" />
                    <telerik:EditorModule Name="RadEditorDomInspector" Enabled="false" />
                    <telerik:EditorModule Name="RadEditorStatistics" Enabled="false" />
                </Modules>
            </telerik:RadEditor>
        </div>
    </div>