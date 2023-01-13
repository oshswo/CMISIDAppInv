Imports System.Data
Partial Class Secured_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'lbl.Text = "CMISID APPLICATION INVENTORY"
        End If

    End Sub

End Class
