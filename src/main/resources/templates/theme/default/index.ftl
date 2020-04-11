<#include "layout/layout.ftl"/>
<@html page_title="首页" page_tab="index">
    <#if active?? && active>
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            <strong>激活成功</strong>
        </div>
    </#if>
    <div class="row">
        <div class="col-md-9">
            <div class="card">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-9  d-none d-lg-block">
                            <div class="horizontal-menu">
                                <nav>
                                    <ul id="nav_menu">
                                        <li class="nav-item <#if tab=="all">active</#if>">
                                            <a class="nav-link" href="/?tab=all">
                                                <i class="ti-layout-sidebar-left"></i><span>全部</span>
                                            </a>
                                        </li>
                                        <li class="nav-item <#if tab=="good">active</#if>">
                                            <a class="nav-link <#if tab=="good">active</#if>" href="/?tab=good">
                                                <i class="ti-layout-sidebar-left"></i><span>精华</span></a>
                                        </li>
                                        <li class="nav-item <#if tab=="hot">active</#if>">
                                            <a class="nav-link <#if tab=="hot">active</#if>" href="/?tab=hot">
                                                <i class="ti-pie-chart"></i><span>最热</span></a>
                                        </li>
                                        <li class="nav-item <#if tab=="newest">active</#if>">
                                            <a class="nav-link <#if tab=="newest">active</#if>"
                                               href="/?tab=newest">
                                                <i class="ti-slice"></i><span>最新</span></a>
                                        </li>
<#--                                        <li class="nav-item <#if tab=="noanswer">active</#if>">-->
<#--                                            <a class="nav-link <#if tab=="noanswer">active</#if>"-->
<#--                                               href="/?tab=noanswer">-->
<#--                                                <i class="fa fa-table"></i>-->
<#--                                                <span>无人问津</span>-->
<#--                                            </a>-->
<#--                                        </li>-->
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- nav and search button -->
                        <div class="col-lg-3 clearfix">
                            <div class="search-box">
                                <form action="/search">
                                    <input type="search" name="keyword" placeholder="Search..." value="${keyword!}"
                                           required>
                                    <i class="ti-search"></i>
                                    <#--                                    <button type="submit">-->
                                    <#--                                        <i class="ti-search">${i18n.getMessage("search")}</i>-->
                                    <#--                                    </button>-->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <@tag_topics pageNo=pageNo!1 tab=tab!"all">
                        <#include "components/topics.ftl"/>
                        <@topics page=page/>

                        <#include "components/paginate.ftl"/>
                        <@paginate currentPage=page.current totalPage=page.pages actionUrl="/" urlParas="&tab=${tab!}"/>
                    </@tag_topics>
                </div>
            </div>
        </div>
        <div class="col-md-3 d-none d-md-block">
            <#if _user??>
                <#include "components/user_info.ftl"/>
            <#else>
                <#include "components/welcome.ftl"/>
            </#if>
            <#include "tag/tags.ftl"/>
<#--            <@score limit=10/>-->
        </div>
    </div>
</@html>
