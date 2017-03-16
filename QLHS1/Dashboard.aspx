<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.master" CodeBehind="Dashboard.aspx.vb" Inherits="QLHS1.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-sm-4 no-padding">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">
                <asp:Label runat="server" Text="Thông tin cá nhân"></asp:Label>  
            </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="box-body no-padding">
                    <div class="form-group">
                        <asp:Label CssClass="col-sm-5" runat="server" Text="Họ và Tên : "></asp:Label>
                        <asp:Label runat="server" ID="lblMyName" CssClass="col-sm-7" Text="Tùng"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" CssClass="col-sm-5" runat="server" Text="Mã : "></asp:Label>
                        <asp:Label runat="server" ID="lblCode" CssClass="col-sm-7" Text="Tùng"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" CssClass="col-sm-5" runat="server" Text="Ngày sinh : "></asp:Label>
                        <asp:Label runat="server" ID="lblBirthday" CssClass="col-sm-7" Text="Tùng"></asp:Label>
                    </div>
                    <%  If Session("Role") = "2" Then%>
                    <div class="form-group">
                        <asp:Label ID="Label4" CssClass="col-sm-5" runat="server" Text="Niên khóa : "></asp:Label>
                        <asp:Label runat="server" ID="lblSchoolYear" CssClass="col-sm-7" Text="Tùng"></asp:Label>
                    </div>
                    <%    End If%>
                </div>
                <div class="box-footer no-padding text-right">
                    <asp:HyperLink runat="server" NavigateUrl="#" CssClass="btn btn-info" Text="Đổi MK"></asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-1"></div>
<div class="col-sm-7 no-padding">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">
                <asp:Label runat="server" Text="Khóa học đang tham gia"></asp:Label>  
            </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="box-body no-padding">
                    <div class="dataTables_wrapper dt-bootstrap">
                        <div class="row no-margin">
                            <div class="col-sm-12 no-padding">
                                <form id="form1" runat="server">
                                    <asp:GridView runat="server" AutoGenerateColumns="false" DataKeyNames="id" ID="GridView1"
                                    CssClass="table table-striped table-bordered table-hover dataTable" EmptyDataText="No records has been added.">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Tên khóa">
                                                <ItemTemplate>
                                                    <asp:HyperLink NavigateUrl="#" runat="server" Text=""></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="TG học">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text=""></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Giáo viên ">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Điển TB ">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
