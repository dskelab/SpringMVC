function check_login()
{
    var name=$("#user_name").val();
    var pass=$("#password").val();
    //登陆验证
    if(name!=="" && !pass=="")
    {
        $.ajax({
            url : "/isValid",
            data : {
                name : name,
                pass : pass
            },
            type : "post",
            dataType : "json",
            async : false,
            success : function(msg) {
                if(msg=="1"){
                    return true;
                }else{
                    return false;
                    alert("密码错误");
                }
            }
        });
    }
    else
    {
        $("#login_form").removeClass('shake_effect');
        setTimeout(function()
        {
            $("#login_form").addClass('shake_effect')
        },1);
    }
}

function check_register(){
    var name = $("#r_user_name").val();
    var pass = $("#r_password").val();
    var email = $("r_email").val();
    if(name!="" && pass=="" && email != "")
    {
        alert("注册成功！");
        $("#user_name").val("");
        $("#password").val("");
    }
    else
    {
        $("#login_form").removeClass('shake_effect');
        setTimeout(function()
        {
            $("#login_form").addClass('shake_effect')
        },1);
    }
}
$(function(){
    $('.message a').click(function () {
        $('form').animate({
            height: 'toggle',
            opacity: 'toggle'
        }, 'slow');
    });
})
