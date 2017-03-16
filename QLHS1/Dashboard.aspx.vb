Imports System.Data.SqlClient
Imports System.Web.Security
Imports QLHS1
Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindDataUser()
        End If
    End Sub

    Private Sub BindDataUser()
        Dim userId As String = Session("UserId")
        Using entities As New QLHSEntities1
            Dim userDetail = (From users In entities.users
                             Where users.id = userId
                             Select users).FirstOrDefault

            lblMyName.Text = userDetail.fullname.ToString
            lblCode.Text = userDetail.id.ToString
            If Not String.IsNullOrEmpty(userDetail.birthday.ToString) Then
                lblBirthday.Text = userDetail.birthday.ToString
            Else
                lblBirthday.Text = "&nbsp;"
            End If
            lblSchoolYear.Text = userDetail.school_year_begin.ToString + " - " + userDetail.school_year_end.ToString
        End Using
    End Sub
End Class