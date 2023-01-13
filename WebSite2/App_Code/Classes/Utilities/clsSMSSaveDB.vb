Imports Microsoft.VisualBasic

Public Class clsSMSSaveDB
    ' Public dbUtility As New clsDimbo.clsMYSQLDatabase
    Public Sub New()
        ' dbUtility.Initialize_DB_MYSQL_WEB(ConfigurationManager.ConnectionStrings("mysqlDBSMSTRA").ConnectionString)
    End Sub

    Public Sub saveSMSDB(thisModule As String, thisSender As String, thisRecipient As String, thisMessage As String)
        'Dim recepient() As String = thisRecipient.Split(",")
        'For Each r As String In recepient
        '    If r.Trim.Length = 11 Then
        '        With dbUtility
        '            .fieldItems = "trans_id,received_id,recipient,recipient_message,priority,send_status,send_number,send_date,send_time"
        '            .sqlString = .getSQLStatement("tbl_sms_for_sending", "INSERT")
        '            .ADDPARAM_CMD_String("trans_id", DateTime.Now.ToString("MMddyyyymmhhss") & Left(Guid.NewGuid().ToString.Replace("-", ""), 25).ToUpper)
        '            .ADDPARAM_CMD_String("received_id", thisModule)
        '            .ADDPARAM_CMD_String("recipient", r.Trim)-
        '            .ADDPARAM_CMD_String("recipient_message", thisMessage & " - DO NOT REPLY. ")
        '            .ADDPARAM_CMD_String("priority", "999")
        '            .ADDPARAM_CMD_String("send_status", "SEND")
        '            .ADDPARAM_CMD_String("send_number", thisSender)
        '            .ADDPARAM_CMD_String("send_date", DateTime.Now.Date.ToString("yyyy-MM-dd"))
        '            .ADDPARAM_CMD_String("send_time", DateTime.Now.ToString("HH:mm:ss"))
        '            .executeUsingCommandFromSQL(True)
        '        End With
        '    End If
        'Next
    End Sub

End Class
