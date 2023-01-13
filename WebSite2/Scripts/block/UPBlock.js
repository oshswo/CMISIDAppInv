
//$(document).ready(function () {
    Sys.WebForms.PageRequestManager.getInstance().add_initializeRequest(OnBeginRequest);
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);
//});


function OnBeginRequest(sender, args) {
    $.blockUI({ message: $('#domMessage') });
}
function endRequest(sender, args) {
    $.unblockUI();
}


