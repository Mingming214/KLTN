$(document).ready(function () {
    $(window).scroll(function () {
        // 	$("#form-user").css({
        // 		"height": $(".product").width()+180
        // 	})
        // });
        // $(window).resize(function(){
        // 	$("#form-user").css({
        // 		"height": $(".product").width()+180
        // 	})
    });
    $(".main-content").css({
        "margin-top": $(".banner-top").outerHeight()
    })
    $(window).resize(function () {
        $(".main-content").css({
            "margin-top": $(".banner-top").outerHeight()
        })
    });
    $("#btn-capnhat").click(function () {
        $("#userName").attr("readOnly", false);
        $("#fullName").attr("readOnly", false);
        $("#phone").attr("readOnly", false);
        $("#btn-ok").removeClass("hidden");
        $("#btn-thoat").removeClass("hidden");
        $("#btn-capnhat").addClass("hidden");
        $("#btn-changePassword").removeClass("hidden");
    });
    $("#btn-changePassword").click(function () {
        event.preventDefault();
        $("#password").val("");
        $(".password").removeClass("hidden");
        $(".password1").removeClass("hidden");
        $(".password2").removeClass("hidden");
        $("#btn-changePassword").addClass("hidden");
    });


    $("#btn-thoat").click(function () {
        location.reload();
    });
    $("#btn-ok").click(function () {
        if ($("#password1").val() === $("#password2").val() && $("#password1").val() != "" && $("#password1").val().length >= 6
            || ($("#password1").val() === $("#password2").val() && $("#password2").val() === "" && $("#password1").parent().hasClass("hidden"))) {
            var formData = $("#form-user").serializeArray();
            var json = {};
            $.each(formData, function (i, field) {
                json[field.name] = field.value;
            });
            var objectusername = {};
            objectusername["name"] = "username";
            objectusername["value"] = json.userName;
            formData.push(objectusername);
            if ($("#password").val().length > 40) {
                if (json.password1.length >= 6) {
                    json["password"] = json.password1;
                }
                json["status"] = 1;
                $.ajax({
                    url: "/api/user",
                    type: "POST",
                    contentType: "application/json",

                    data: JSON.stringify(json),
                    success: function (res) {
                        $("#userId")[0].innerText = json["fullName"];
                        $("#userName").attr("readOnly", true);
                        $("#fullName").attr("readOnly", true);
                        $("#phone").attr("readOnly", true);
                        $("#btn-ok").addClass("hidden");
                        $("#btn-thoat").addClass("hidden");
                        $("#btn-capnhat").removeClass("hidden");
                        $("#btn-changePassword").addClass("hidden");
                        swal("Success!", "", "success");

                        // location.reload();

                    },
                    error: function () {
                        swal("Error!", "Plese complete & check again input form", "error");
                    }
                });
            } else {
                $.ajax({
                    url: "/j_spring_security_login",
                    contentType: "application/x-www-form-urlencoded",
                    type: "POST",
                    data: formData,
                    success: function (res) {
                        if (res.includes("Username or password incorrect")) {
                            swal("Error!", "Plese  check again password incorrect", "error");
                        } else {
                            if (json.password1.length >= 6) {
                                json["password"] = json.password1;
                            }
                            json["status"] = 1;
                            $.ajax({
                                url: "/api/user",
                                type: "POST",
                                contentType: "application/json",

                                data: JSON.stringify(json),
                                success: function (res) {
                                    $("#userId").innerText = json["fullName"];
                                    swal("Success!", "", "success");
                                    location.reload();

                                },
                                error: function () {
                                    swal("Error!", "Plese complete & check again input form", "error");
                                }
                            });
                        }
                    },
                    error: function () {
                        swal("Error!", "Plese complete & check again input form", "error");
                    }
                });
            }
        } else {
            swal("Error!", "Plese complete & check again input form", "error");
        }
    });


});

