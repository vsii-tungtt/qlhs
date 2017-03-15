Imports System.Data.SqlClient
Imports System.Web.Security
Imports QLHS1
Public Class ClassDetail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindData()
        End If
    End Sub

    Private Sub BindData()
        Dim classId As String = Request.QueryString("classId").ToString
        Using entities As New QLHSEntities1
            Dim classDetail = (From classes In entities.classes
                                         Join users In entities.users On classes.teacher_id Equals users.id
                                         Join statuses In entities.m_statuses On classes.status_id Equals statuses.id
                                         Where classes.id = classId
                                         Select New With {.class_name = classes.class_name, .teacher = users.fullname, .status = statuses.status, .begin = classes.date_begin, .end = classes.date_end, .description = classes.description, .status_id = statuses.id}
                                         ).FirstOrDefault

            lblTitle.Text = classDetail.class_name.ToString
            lblTeacher.Text = classDetail.teacher.ToString
            lblStatus.Text = classDetail.status.ToString
            lblBegin.Text = classDetail.begin.ToString
            lblEnd.Text = classDetail.end.ToString
            lblDescription.Text = classDetail.description.ToString
            If classDetail.status_id = 1 Then
                btnRegist.Visible = True
            Else
                btnRegist.Visible = False
            End If
        End Using
    End Sub
End Class