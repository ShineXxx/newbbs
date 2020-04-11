<#macro header page_tab>
    <nav class="">
        <div class="mainheader-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="/">
                                <img src="/static/assets/images/icon/logo2.png" alt="logo">
                                ${site.name!}
                            </a>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="d-md-inline-block d-block mr-md-4">
                            <ul class="notification-area">
                                <li class="nav-item <#if page_tab == "index">active</#if>">
                                    <a href="/" class="nav-link active">
                                        <i class="fa fa-home"></i> ${i18n.getMessage("index")}
                                    </a>
                                </li>
                                <#--                                <li class="nav-item <#if page_tab == "tags">active</#if>">-->
                                <#--                                    <a href="/tags" class="nav-link">-->
                                <#--                                        <i class="fa fa-tags"></i> ${i18n.getMessage("tag")}-->
                                <#--                                    </a>-->
                                <#--                                </li>-->
                                <#if _user??>
                                    <li class="dropdown">
                                        <i class="fa fa-envelope-o dropdown-toggle"
                                           data-toggle="dropdown"><span>3</span></i>
                                        <div class="dropdown-menu notify-box nt-enveloper-box">
                                            <span class="notify-title">You have 3 new notifications <a
                                                        href="#">view all</a></span>
                                            <div class="nofity-list">
                                                <ul class="navbar-nav">
                                                    <#if _user??>
                                                        <li class="nav-item <#if page_tab == "notification">active</#if>">
                                                            <a href="/notifications" class="nav-link">
                                                                <i class="fa fa-envelope"></i> ${i18n.getMessage("notification")}
                                                                <span class="badge badge-default" id="nh_count"></span>
                                                            </a>
                                                        </li>
                                                    <#else>
                                                        <li class="nav-item <#if page_tab == "login">active</#if>">
                                                            <a href="/login" class="nav-link">
                                                                <i class="fa fa-sign-in"></i> ${i18n.getMessage("login")}
                                                            </a>
                                                        </li>
                                                        <li class="nav-item <#if page_tab == "register">active</#if>">
                                                            <a href="/register" class="nav-link">
                                                                <i class="fa fa-sign-out"></i> ${i18n.getMessage("register")}
                                                            </a>
                                                        </li>
                                                        <#if !model.isEmpty(site.oauth_github_client_id!)>
                                                            <li class="nav-item">
                                                                <a href="/oauth/github" class="nav-link">
                                                                    <i class="fa fa-github"></i> ${i18n.getMessage("github_login")}
                                                                </a>
                                                            </li>
                                                        </#if>
                                                    </#if>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                <#else>
                                    <li class="nav-item <#if page_tab == "login">active</#if>">
                                        <a href="/login" class="nav-link">
                                            <i class="fa fa-sign-in"></i> ${i18n.getMessage("login")}
                                        </a>
                                    </li>
                                    <li class="nav-item <#if page_tab == "register">active</#if>">
                                        <a href="/register" class="nav-link">
                                            <i class="fa fa-sign-out"></i> ${i18n.getMessage("register")}
                                        </a>
                                    </li>
                                </#if>
                                <li class="settings-btn">

                                </li>
                            </ul>
                        </div>
                        <div class="clearfix d-md-inline-block d-block">
                            <#if _user??>
                                <div class="user-profile m-0">
                                    <img class="avatar user-thumb" src="/static/assets/images/author/avatar.png"
                                         alt="avatar">
                                    <h4 class="user-name dropdown-toggle" data-toggle="dropdown">
                                        <#if _user??>${_user.username}<#else>游客</#if>
                                        <i
                                                class="fa fa-angle-down"></i></h4>
                                    <div class="dropdown-menu">
                                        <a href="/user/${_user.username}" class="nav-link">
                                            <i class="fa fa-user"></i> ${_user.username}
                                        </a>
                                        <a href="/settings" class="dropdown-item nav-link">
                                            <i class="ti-settings"></i> ${i18n.getMessage("setting")}
                                        </a>
                                        <a class="dropdown-item"
                                           href="javascript:if(confirm('确定要登出吗？登出了就没办法发帖回帖了哦!'))window.location.href='/logout'"
                                           class="nav-link">
                                            <i class="fa fa-sign-out"></i> ${i18n.getMessage("logout")}
                                        </a>
                                    </div>
                                </div>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</#macro>