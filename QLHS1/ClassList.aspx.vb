Imports System.Data.SqlClient
Imports System.Web.Security
Imports QLHS1
Public Class ClassList
    Inherits System.Web.UI.Page
    Dim ROLE_TEACHER As String = "1"
    Dim ROLE_STUDENT As String = "2"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim className As String = ""
        Dim teacher As String = ""
        Dim begin As String = ""
        Dim endDate As String = ""
        If Not String.IsNullOrEmpty(Request.QueryString("class")) Then
            className = Request.QueryString("class").ToString
        End If
        If Not String.IsNullOrEmpty(Request.QueryString("teacher")) Then
            teacher = Request.QueryString("teacher").ToString
        End If
        If Not String.IsNullOrEmpty(Request.QueryString("begin")) Then
            begin = Request.QueryString("begin").ToString
        End If
        If Not String.IsNullOrEmpty(Request.QueryString("end")) Then
            endDate = Request.QueryString("end").ToString
        End If
        Using entities As New QLHSEntities1
            GridView1.DataSource = From classes In entities.classes
                                   Join users In entities.users On classes.teacher_id Equals users.id
                                   Join status In entities.m_statuses On classes.status_id Equals status.id
                                   Where classes.delflg = False And classes.class_name.Contains(className) And users.fullname.Contains(teacher)
                                   Select New With {.id = classes.id, .class_name = classes.class_name, .username = users.fullname, .status = status.status, .status_id = status.id, .begin_date = classes.date_begin, .end_date = classes.date_end}
            GridView1.DataBind()
        End Using
        txtTitle.Text = "Kết quả: " + GridView1.Rows.Count.ToString + " bản ghi"
        If Session("Role") = ROLE_TEACHER Then
            GridView1.Columns(6).Visible = False
        End If
    End Sub
End Class