$(document).ready(function(){
    $.ajax({
        type: "GET",
        url: "SharedHTML/Menu.html",
        dataType: "html",
        success: function(menuHTML) {
            $("#mainMenu").html(menuHTML);

            var checked = false;

            $("#show-menu").change(function() {
                if(checked) {
                    $(".headerContainer").eq(0).css("height", "150px");
                    $("#menu").css("display", "none");
                    $(".menuContainer").css("border", "none");
                }
                else {
                    $(".headerContainer").eq(0).css("height", "430px");
                    $("#menu").css("display", "block");
                    $(".menuContainer").css("border", "1px solid #19C589");
                }

                checked = !checked;
            });

            $(window).resize(function(){
                if(parseInt($(window).width()) > 860) {
                    checked = false;
                    $("#menu").css("display", "block");
                    $(".headerContainer").eq(0).css("height", "150px");
                    $(".menuContainer").css("border", "none");
                }
                else if(!checked) {
                    $("#menu").css("display", "none");
                }
            });
        },
        fail: function(errorMsg) {
            alert(errorMsg);
        }
    });
});