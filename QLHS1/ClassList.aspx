<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.master" CodeBehind="ClassList.aspx.vb" Inherits="QLHS1.ClassList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="Scripts/class-list.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title"><asp:Label runat="server" Text="Tìm Kiếm"></asp:Label>  </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <form action="ClassList.aspx" class="form-horizontal">
                    <div class="box-body no-padding">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Tên khóa học </label>
                                <div class="col-sm-8">
                                    <input id="class" name="class" class="form-control" type="text" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Giáo viên phụ trách</label>
                                <div class="col-sm-8">
                                    <input id="teacher" name="teacher" class="form-control" type="text" />
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ngày BĐ</label>
                                <div class="col-sm-8">
                                    <input id="begin" name="begin" class="form-control" type="text" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ngày Kết thúc</label>
                                <div class="col-sm-8">
                                    <input id="end" name="end" class="form-control" type="text" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer no-padding text-center">
                        <button type="submit" class="btn aka-btn aka-btn-darkblue big">Tìm kiếm</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">
            <asp:Label ID="txtTitle" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="box-body no-padding">
                    <div class="dataTables_wrapper dt-bootstrap">
                        <div class="row no-margin">
                            <div class="col-sm-12 no-padding">
                                <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id"
                                EmptyDataText="No records has been added.">
                                <Columns>
                                    <asp:TemplateField HeaderText="STT">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tên Khóa học">
                                        <ItemTemplate>
                                            <asp:HyperLink NavigateUrl='<%# "~/ClassDetail.aspx?classId="+Eval("id").ToString %>' runat="server" Text='<%# Eval("class_name") %>'></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ngày BĐ">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("begin_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ngày KT">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("end_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Giáo viên">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                        <asp:HyperLink Visible='<%# If(Eval("status_id").ToString() = "1", "true", "false")%>' NavigateUrl="#" runat="server" Text="Đăng ký" /> 
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
