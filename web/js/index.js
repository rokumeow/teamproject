/**
 * Created by desti on 2019/3/26.
 */
$(function(){
    var $login = $('#login');
    var $register = $('#register');
    var $userInfo = $('#userInfo');
    var $userTab = $('#user_tab');
    var $userInfoTitle = $('#userInfoTitle');
    //registration
    $register.find('p.user_register_btn').on('click', function () {
        //submit the request using ajax
        $.ajax({
            type: 'post',
            url: '/api/user/register',
            data: {
                username: $register.find('[name="username"]').val(),
                password: $register.find('[name="password"]').val(),
                confirmpassword: $register.find('[name="confirmpassword"]').val()
            },
            dataType: 'json',
            success: function (result) {
                console.log(result);
                $register.find('.user_err').html(result.message);
                if(!result.code){
                    //registration success
                    setTimeout(function () {
                        $('.user_login').css('display','inline-block');
                        $('.user_register').hide();
                        $login.show();
                        $register.hide();
                    }, 1000)
                }

            }
        });
    })
    //login
    $login.find('p.user_login_btn').on('click', function () {
        //ajax post request
        $.ajax({
            type: 'post',
            url: '/api/user/login',
            data: {
                username: $login.find('[name="username"]').val(),
                password: $login.find('[name="password"]').val()
            },
            dataType: 'json',
            success: function (result) {
                //show the login error message
                $login.find('.user_err').html(result.message);
                if(!result.code){
/*                    //login success
                    /!*setTimeout(function () {
                        $login.hide();
                        $userInfo.show();
                        $userTab.hide();
                        $userInfoTitle.show();
                        //display the user information
                        $userInfo.find('.username').html(result.userInfo.username);
                        $userInfo.find('.info').html('welcome to the music festival');
                    }, 1000);*!/*/
                    window.location.reload();
                }

            }
        })
    })
    $('#logoutBtn').on('click', function(){
        $.ajax({
           url: '/api/user/logout',
            success: function(result){
               if(!result.code){
                   window.location.reload();
               }
            }
        });
    })
})