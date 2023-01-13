Imports System.Data
Partial Class Include_wucMainMenuBS
    Inherits System.Web.UI.UserControl

    Dim _clsDB As New clsDatabase
    Dim _clsCMS As New clsCMS
    Dim menuWidth As Integer
   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' MsgBox(Session("MODULE"))
        If Request("module") <> "" Then
            Session("MODULE") = "CMISID"
            Response.Redirect("~/Secured/Default.aspx")
        End If

        'If IsNothing(Session("navMenu")) Then
        GetMenuData()
        'Else
        ' navMenu.Controls.Add(CType(Session("navMenu"), LiteralControl))
        ' End If

    End Sub
   
    Private Sub GetMenuData()

        Dim dtMenu As New DataTable
        Dim htmlStringHeadButton As String = ""
        Dim htmlString As String = ""
        Dim urlString As String = ""
        Dim preUrl As String = ConfigurationManager.AppSettings("preUrl").ToString
        dtMenu = _clsCMS.browseSecureCMSMenuHeaderPermissionByModule(Session("UserId"), Session("UserRoleId"), "CMISID")


        Dim liList As New LiteralControl

        For Each row As DataRow In dtMenu.Rows
            menuWidth = menuWidth + 180
            urlString = row("page_url").ToString().Replace("~/", preUrl)
            Dim dt As New DataTable
            dt = _clsCMS.browseSecureCMSSubMenuPermission(Session("UserId"), Session("UserRoleId"), row("menu_id").ToString())

            If row("page_url") <> "" Then
                htmlString = htmlString & "<a href='" & urlString & "' class='list-group-item list-group-item-action list-group-item-light p-3'>" & row("menu_name").ToString() & "</a>"
                ' htmlString = htmlString & "<li><a href='" & urlString & "'><button id='' type='button' class='btn btn-lg btn-block btn-success' style='backgroud-color:yellow'><span class=''></span>&nbsp;" & row("menu_name").ToString() & "</button></a></li>"
            Else

                Dim _menuId As String = row("menu_name").ToString() & row("menu_id").ToString()

                htmlString = htmlString & "<a href='" & urlString & "' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target='" & "#" & _menuId & "' aria-expanded='false'>" & row("menu_name").ToString() & "</a>"
                ' htmlString = htmlString & "<li class='dropdown'><a href='" & urlString & "' class='dropdown-toggle' data-toggle='dropdown'><button id='' type='button' class='btn btn-lg btn-block btn-success' style='backgroud-color:yellow><span class=''></span>&nbsp;" & row("menu_name").ToString() & "</button></a><ul class='dropdown-menu'>"

                htmlString = htmlString & "<div class='collapse' id='" & _menuId & "' style=''> <ul class='btn-toggle-nav list-unstyled fw-normal pb-1'>"

                For Each childView As DataRow In dt.Rows
                    urlString = childView("page_url").ToString().Replace("~/", preUrl)
                    htmlString = htmlString & "<li><a href='" & urlString & "' class='link-dark rounded'>" & childView("menu_name").ToString() & "</a></li>"
                    'htmlString = htmlString & "<li><a href='" & urlString & "'><button type='button' class='btn btn-block btn-warning'><span class=''></span>&nbsp;" & childView("menu_name").ToString() & "</button></a></li>"
                Next

                htmlString = htmlString + "</ul></div>"

            End If

            'If row("page_url") = "" Then
            '    htmlString = htmlString + "</ul></li>"
            'End If
        Next

        liList.Text = htmlString
        navMenu.Controls.Add(liList)
        Session("navMenu") = liList

    End Sub
 
End Class
