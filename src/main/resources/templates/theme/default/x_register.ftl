<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sign up - srtdash</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <#--    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>-->
    <script src="/static/theme/default/libs/layer/layer.js"></script>
    <script src="/static/theme/default/js/app.js"></script>

    <link rel="shortcut icon" type="image/png" href="/static/assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="/static/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/static/assets/css/metisMenu.css">
    <link rel="stylesheet" href="/static/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="/static/assets/css/typography.css">
    <link rel="stylesheet" href="/static/assets/css/default-css.css">
    <link rel="stylesheet" href="/static/assets/css/styles.css">
    <link rel="stylesheet" href="/static/assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="/static/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- login area start -->
    <div class="login-area login-bg">
        <div class="container">
            <div class="login-box ptb--100">
                <form action="" onsubmit="return false;" id="form">
                    <div class="reg-form-head">
                        <h4>Sign up</h4>
                        <p>Hello there, Sign up and Join with Us</p>
                    </div>
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="username">用户名</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder=""/>
                            <i class="ti-user"></i>
                        </div>
                        <div class="form-gp">
                            <label for="email">邮箱</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder=""/>
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">密码</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder=""/>
                            <i class="ti-lock"></i>
                        </div>
<#--                        <div class="form-gp">-->
<#--                            <label for="exampleInputPassword2">Confirm Password</label>-->
<#--                            <input type="password" id="exampleInputPassword2">-->
<#--                            <i class="ti-lock"></i>-->
<#--                        </div>-->
                        <div class="form-gp">
                            <label for="captcha">验证码</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="captcha" name="captcha" placeholder="验证码"/>
                                <span class="input-group-append">
                <img style="border: 1px solid #ccc;" src="" class="captcha" id="changeCaptcha"/>
              </span>
                            </div>
                        </div>
                        <div class="submit-btn-area">
                            <button id="register_btn" type="submit">Submit <i class="ti-arrow-right"></i></button>
<#--                            <div class="login-other row mt-4">-->
<#--                                <div class="col-6">-->
<#--                                    <a class="fb-login" href="#">Sign up with <i class="fa fa-facebook"></i></a>-->
<#--                                </div>-->
<#--                                <div class="col-6">-->
<#--                                    <a class="google-login" href="#">Sign up with <i class="fa fa-google"></i></a>-->
<#--                                </div>-->
<#--                            </div>-->
                        </div>
                        <div class="form-footer text-center mt-5">
                            <p class="text-muted">Already have an account?
                                <a href="/login">Sign in</a>
                            </p>
                        </div>
                        <div class="form-footer text-center mt-5">
                            <p class="text-muted">返回主页 <a href="/">继续浏览</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- login area end -->

    <!-- jquery latest version -->
    <script src="/static/assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="/static/assets/js/popper.min.js"></script>
    <script src="/static/assets/js/bootstrap.min.js"></script>
    <script src="/static/assets/js/owl.carousel.min.js"></script>
    <script src="/static/assets/js/metisMenu.min.js"></script>
    <script src="/static/assets/js/jquery.slimscroll.min.js"></script>
    <script src="/static/assets/js/jquery.slicknav.min.js"></script>
    
    <!-- others plugins -->
    <script src="/static/assets/js/plugins.js"></script>
    <script src="/static/assets/js/scripts.js"></script>
</body>
<script>
    $(function () {
        $(".captcha").attr('src', "/common/captcha?ver=" + new Date().getTime());
        $(".captcha").click(function () {
            $(".captcha").each(function () {
                var date = new Date();
                $(this).attr("src", "/common/captcha?ver=" + date.getTime());
            });
        });
        $("#register_btn").click(function () {
            var username = $("#username").val();
            var password = $("#password").val();
            var email = $("#email").val();
            var captcha = $("#captcha").val();
            if (!username) {
                err("请输入用户名");
                return;
            }
            if (!password) {
                err("请输入密码");
                return;
            }
            if (!email) {
                err("请输入邮箱");
                return;
            }
            if (!captcha) {
                err("请输入验证码");
                return;
            }
            $.ajax({
                url: '/api/register',
                type: 'post',
                cache: false,
                async: false,
                contentType: 'application/json',
                data: JSON.stringify({
                    username: username,
                    password: password,
                    email: email,
                    captcha: captcha,
                }),
                success: function (data) {
                    if (data.code === 200) {
                        suc("注册成功");
                        setTimeout(function () {
                            window.location.href = "/";
                        }, 700);
                    } else {
                        err(data.description);
                    }
                }
            })
        });
        $("#mobile_login_btn").click(function () {
            $("#local_register_div").addClass("hidden");
            $("#mobile_login_div").removeClass("hidden");
        });
    })
</script>
</html>