<%@ Control Language="VB" CodeBehind="ForeignKey.ascx.vb" Inherits="QLHS1.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

