<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.master" CodeBehind="ClassDetail.aspx.vb" Inherits="QLHS1.ClassDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title"><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>  </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <form runat="server" id="form1" class="form-horizontal">
                    <div class="box-body no-padding">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Giáo viên </label>
                                <asp:Label CssClass="col-sm-8 control-label" ID="lblTeacher" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Trạng thái </label>
                                <asp:Label CssClass="col-sm-8 control-label" ID="lblStatus" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ngày bắt đầu </label>
                                <asp:Label CssClass="col-sm-8 control-label" ID="lblBegin" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ngày kết thúc </label>
                                <asp:Label CssClass="col-sm-8 control-label" ID="lblEnd" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <%  If Session("Role") = "2" Then%>
                    <div class="box-footer no-padding text-right">
                        <asp:Button CssClass="btn btn-info" runat="server" ID="btnRegist" Text="Đăng ký"/>
                    </div>
                    <%    End If%>
                    
                </form>
            </div>
        </div>
    </div>
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title"><asp:Label ID="Label2" runat="server" Text="Nội dung khóa học"></asp:Label>  </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="box-body no-padding">
                    <div class="row no-margin">
                        <div class="col-sm-12 no-padding">
                            <asp:Label runat="server" ID="lblDescription"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
