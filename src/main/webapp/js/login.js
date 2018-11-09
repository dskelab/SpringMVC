function check_login()
{
    /*用于验证是否登陆成功*/
    var isValid = false;
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
                    isValid = true;
                }else{
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

    return isValid;
}

function check_register(){
    /*用于验证是否注册成功*/
    var isValid = false;
    var name = $("#r_user_name").val();
    var pass = $("#r_password").val();

    if(name!="" && pass!="")
    {
        $.ajax({
            url : "/register",
            data : {
                name : name,
                pass : pass
            },
            type : "post",
            dataType : "json",
            async : false,
            success : function(msg) {
                if(msg=="1"){
                    alert("注册成功！");
                    isValid = true;
                }else{
                    alert("注册失败");
                }
            }
        });
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
    return isValid;
}
$(function(){
    $('.message a').click(function () {
        $('form').animate({
            height: 'toggle',
            opacity: 'toggle'
        }, 'slow');
    });
})
