<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SourceControl.ascx.cs" Inherits="DesktopModules_QuanLyMauDon_Source_SourceControl" %>
<%@ Register TagPrefix="dnn" 
    Namespace="DotNetNuke.Web.Client.ClientResourceManagement" 
    Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<dnn:DnnCssInclude runat="server"
    FilePath="~/DesktopModules/QuanLyMauDon/Source/Style/Style.css" />
<dnn:DnnJsInclude runat="server"
    FilePath="~/DesktopModules/QuanLyMauDon/Source/Script/PrintPDF.js"
    ForceProvider="DnnFormBottomProvider" />
<table ID="tbl1" runat="server" style="width: 100%;">
  <thead>
  <tr>
     <th style="font-size: x-large; text-align: center" colspan="2">PHIẾU ĐỀ NGHỊ CẤP BẢN SAO BẰNG TỐT NGHIỆP</th>
  </tr>
  </thead>
  <tbody>
  <tr runat="server" id="Tr1">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Họ và tên:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:TextBox ID="hoVaTenTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr2">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">MSSV:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:TextBox ID="mssvTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr3">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Ngày sinh:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <telerik:RadDateTimePicker ID="ngaySinhPicker" Width="310px" runat="server" AutoPostBackControl="Both">
               <Calendar ID="myCalendar" runat="server" EnableKeyboardNavigation="true">
               </Calendar>
               <DateInput ToolTip="Choose Date"></DateInput>
               <TimeView Interval="05:00:00" ShowHeader="False" StartTime="08:30:00" EndTime="13:31:00" OnClientTimeSelecting="timeSelecting" > 
               </TimeView> 
               <ClientEvents OnDateSelected="dateSelected" />
        </telerik:RadDateTimePicker>
         
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator0" ControlToValidate="ngaySinhPicker" ErrorMessage="Choose a date!" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr runat="server" id="Tr4">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Ngành học:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:TextBox ID="nganhHocTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox>
      </td>
  </tr>
  <tr runat="server" id="Tr5">
      <td style="width: 25%; padding-top:5px;">Tốt nghiệp khóa:</td>
      <td style="width: 75%; padding-top:5px;">
          <table class="hundred_percent_width">
              <tr>
                  <td><asp:TextBox ID="totNghiepKhoaTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox></td>
                  <td style="padding-left:5px;">
                      <telerik:RadDateTimePicker ID="totNghiepKhoaPicker" Width="310px" runat="server" AutoPostBackControl="Both">
                           <Calendar ID="Calendar1" runat="server" EnableKeyboardNavigation="true">
                           </Calendar>
                           <DateInput ToolTip="Choose Date"></DateInput>
                           <TimeView Interval="05:00:00" ShowHeader="False" StartTime="08:30:00" EndTime="13:31:00" OnClientTimeSelecting="timeSelecting" > 
                           </TimeView> 
                           <ClientEvents OnDateSelected="dateSelected" />
                    </telerik:RadDateTimePicker>
         
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="totNghiepKhoaPicker" ErrorMessage="Choose a date!" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
          </table>
   </td>
  </tr>
  <tr runat="server" id="Tr6">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Số bản sao đề nghị cấp:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:TextBox ID="soBanSaoTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into number text box--%>
      </td>
  </tr>
  <tr runat="server" id="Tr7">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Lý do:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:TextBox ID="lyDoTxt" runat="server" CssClass="hundred_percent_width"></asp:TextBox> <%--Turn this into textArea--%>
      </td>
  </tr>
   <tr runat="server" id="Tr9">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;">Chọn loại tài liệu:</td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:DropDownList ID="ddlLoaiTaiLieu" runat="server"></asp:DropDownList>
      </td>
  </tr>
  <tr runat="server" id="Tr8">
      <td style="width: 25%; padding-right: 5px; padding-top:5px;"></td>
      <td style="width: 75%; padding-left: 5px; padding-top:5px;">
          <asp:Button ID="btnSubmit" runat="server" Text="Lưu" OnClick="btnSubmit_Click" />&nbsp;<input type="reset" value="Xóa" />&nbsp;
          <input type='button' value='In tài liệu' onclick="printFrame('printIframe');" style="display:none;" id="nutIn"/>
      </td>
  </tr>
<tr>
    <td style="width: 25%; padding-right: 5px; padding-top:5px;">Khung in ấn</td>
     <td style="width: 75%; padding-left: 5px; padding-top:5px;">
        <iframe id="printIframe" src="" width="100%" height="300"></iframe>
    </td>
</tr>
  </tbody>
  <tfoot>
  <tr>
      <td style="background-color: forestgreen; text-align: center; font-size: large;" colspan="2">Copyright 2017 by Khoa Y - Đại Học Quốc Gia Thành Phố Hồ Chí Minh</td>
  </tr>
  </tfoot>
</table>
<asp:Label ID="lblIsPrintFile" runat="server" Text="" CssClass="lblIsPrintFile"></asp:Label>
