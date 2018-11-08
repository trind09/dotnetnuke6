$(window).load(function () {
    var lblIsPrintFile = $(".lblIsPrintFile");
    if (lblIsPrintFile) {
        var innerText = lblIsPrintFile[0].innerText;
        if (innerText != "") {
            $("#printIframe").attr("src", innerText);
            $('#nutIn').show();
        } else {
            $("#printIframe").attr("src", "");
            $('#nutIn').hide();
        }
    } else {
        $("#printIframe").attr("src", "");
        $('#nutIn').hide();
    }
});

function printFrame(id) {
    var frm = document.getElementById(id).contentWindow;
    frm.focus();// focus on contentWindow is needed on some ie versions
    frm.print();
    return false;
}


//----------------------Datetime pciker----------------------------
var isTimeSet = false;
function timeSelecting(sender, args) {
    isTimeSet = true;
}
function dateSelected(sender, args) {
    if (args.get_oldDate() == null && !isTimeSet) {
        args.set_cancel(true);
        isTimeSet = true;
        sender.get_timeView().setTime(8, 30, 0, 0);
    }
    if (isTimeSet) {
        isTimeSet = false;
    }
}