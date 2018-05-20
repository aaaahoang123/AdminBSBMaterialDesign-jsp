<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info">
            <div class="image">
                <img src="${assets}images/user.png" width="48" height="48" alt="User" />
            </div>
            <div class="info-container">
                <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">John Doe</div>
                <div class="email">john.doe@example.com</div>
                <div class="btn-group user-helper-dropdown">
                    <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #User Info -->
        <!-- Menu -->
        <div class="menu">
            <ul class="list">
                <li class="header">MAIN NAVIGATION</li>
                <%--<li <c:if test="${path eq '/'}" >class="active"</c:if>>--%>
                <li <c:if test="${fn:contains(content, 'pages/dashboard.jsp')}">class="active"</c:if>>
                    <a href="/">
                        <i class="material-icons">home</i>
                        <span>Home</span>
                    </a>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/typography.jsp')}">class="active"</c:if>>
                    <a href="/typography">
                        <i class="material-icons">text_fields</i>
                        <span>Typography</span>
                    </a>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/helper-classes.jsp')}">class="active"</c:if>>
                    <a href="/helper-classes">
                        <i class="material-icons">layers</i>
                        <span>Helper Classes</span>
                    </a>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/widgets')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">widgets</i>
                        <span>Widgets</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/widgets/cards')}">class="active"</c:if>>
                            <a href="javascript:void(0);" class="menu-toggle">
                                <span>Cards</span>
                            </a>
                            <ul class="ml-menu">
                                <li <c:if test="${fn:contains(content, 'pages/widgets/cards/basic.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/cards/basic">Basic</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/cards/colored.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/cards/colored">Colored</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/cards/no-header.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/cards/no-header">No Header</a>
                                </li>
                            </ul>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/widgets/info-box')}">class="active"</c:if>>
                            <a href="javascript:void(0);" class="menu-toggle">
                                <span>Infobox</span>
                            </a>
                            <ul class="ml-menu">
                                <li <c:if test="${fn:contains(content, 'pages/widgets/info-box/info-box-1.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/info-box/info-box-1">Info Box 1</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/info-box/info-box-2.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/info-box/info-box-2">Info Box 2</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/info-box/info-box-3.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/info-box/info-box-3">Info Box 3</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/info-box/info-box-4.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/info-box/info-box-4">Info Box 4</a>
                                </li>
                                <li <c:if test="${fn:contains(content, 'pages/widgets/info-box/info-box-5.jsp')}">class="active"</c:if>>
                                    <a href="/widgets/info-box/info-box-5">Info Box 5</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/ui')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">swap_calls</i>
                        <span>User Interface (UI)</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/ui/alerts.jsp')}">class="active"</c:if>>
                            <a href="/ui/alerts">Alerts</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/animations.jsp')}">class="active"</c:if>>
                            <a href="/ui/animations">Animations</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/badges.jsp')}">class="active"</c:if>>
                            <a href="/ui/badges">Badges</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/breadcrumbs.jsp')}">class="active"</c:if>>
                            <a href="/ui/breadcrumbs">Breadcrumbs</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/buttons.jsp')}">class="active"</c:if>>
                            <a href="/ui/buttons">Buttons</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/collapse.jsp')}">class="active"</c:if>>
                            <a href="/ui/collapse">Collapse</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/colors.jsp')}">class="active"</c:if>>
                            <a href="/ui/colors">Colors</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/dialogs.jsp')}">class="active"</c:if>>
                            <a href="/ui/dialogs">Dialogs</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/icons.jsp')}">class="active"</c:if>>
                            <a href="/ui/icons">Icons</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/labels.jsp')}">class="active"</c:if>>
                            <a href="/ui/labels">Labels</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/list-group.jsp')}">class="active"</c:if>>
                            <a href="/ui/list-group">List Group</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/media-object.jsp')}">class="active"</c:if>>
                            <a href="/ui/media-object">Media Object</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/modals.jsp')}">class="active"</c:if>>
                            <a href="/ui/modals">Modals</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/notifications.jsp')}">class="active"</c:if>>
                            <a href="/ui/notifications">Notifications</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/pagination.jsp')}">class="active"</c:if>>
                            <a href="/ui/pagination">Pagination</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/preloaders.jsp')}">class="active"</c:if>>
                            <a href="/ui/preloaders">Preloaders</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/progressbars.jsp')}">class="active"</c:if>>
                            <a href="/ui/progressbars">Progress Bars</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/range-sliders.jsp')}">class="active"</c:if>>
                            <a href="/ui/range-sliders">Range Sliders</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/sortable-nestable.jsp')}">class="active"</c:if>>
                            <a href="/ui/sortable-nestable">Sortable & Nestable</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/tabs.jsp')}">class="active"</c:if>>
                            <a href="/ui/tabs">Tabs</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/thumbnails.jsp')}">class="active"</c:if>>
                            <a href="/ui/thumbnails">Thumbnails</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/tooltips-popovers.jsp')}">class="active"</c:if>>
                            <a href="/ui/tooltips-popovers">Tooltips & Popovers</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/ui/waves.jsp')}">class="active"</c:if>>
                            <a href="/ui/waves">Waves</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/forms')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">assignment</i>
                        <span>Forms</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/forms/basic-form-elements.jsp')}">class="active"</c:if>>
                            <a href="/forms/basic-form-elements">Basic Form Elements</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/forms/advanced-form-elements.jsp')}">class="active"</c:if>>
                            <a href="/forms/advanced-form-elements">Advanced Form Elements</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/forms/form-examples.jsp')}">class="active"</c:if>>
                            <a href="/forms/form-examples">Form Examples</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/forms/form-validation.jsp')}">class="active"</c:if>>
                            <a href="/forms/form-validation">Form Validation</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/forms/form-wizard.jsp')}">class="active"</c:if>>
                            <a href="/forms/form-wizard">Form Wizard</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/forms/editors.jsp')}">class="active"</c:if>>
                            <a href="/forms/editors">Editors</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/tables')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">view_list</i>
                        <span>Tables</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/tables/normal-tables.jsp')}">class="active"</c:if>>
                            <a href="/tables/normal-tables">Normal Tables</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/tables/jquery-datatable.jsp')}">class="active"</c:if>>
                            <a href="/tables/jquery-datatable">Jquery Datatables</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/tables/editable-table.jsp')}">class="active"</c:if>>
                            <a href="/tables/editable-table">Editable Tables</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/medias')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">perm_media</i>
                        <span>Medias</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/medias/image-gallery.jsp')}">class="active"</c:if>>
                            <a href="/medias/image-gallery">Image Gallery</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/medias/carousel.jsp')}">class="active"</c:if>>
                            <a href="/medias/carousel">Carousel</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/charts')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">pie_chart</i>
                        <span>Charts</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/charts/morris')}">class="active"</c:if>>
                            <a href="/charts/morris">Morris</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/charts/flot')}">class="active"</c:if>>
                            <a href="/charts/flot">Flot</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/charts/chartjs')}">class="active"</c:if>>
                            <a href="/charts/chartjs">ChartJS</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/charts/sparkline')}">class="active"</c:if>>
                            <a href="/charts/sparkline">Sparkline</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/charts/jquery-knob')}">class="active"</c:if>>
                            <a href="/charts/jquery-knob">Jquery Knob</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/examples')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">content_copy</i>
                        <span>Example Pages</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <a href="/examples/sign-in">Sign In</a>
                        </li>
                        <li>
                            <a href="/examples/sign-up">Sign Up</a>
                        </li>
                        <li>
                            <a href="/examples/forgot-password">Forgot Password</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/examples/blank.jsp')}">class="active"</c:if>>
                            <a href="/examples/blank">Blank Page</a>
                        </li>
                        <li>
                            <a href="/examples/404">404 - Not Found</a>
                        </li>
                        <li>
                            <a href="/examples/500">500 - Server Error</a>
                        </li>
                    </ul>
                </li>
                <li <c:if test="${fn:contains(content, 'pages/maps')}">class="active"</c:if>>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">map</i>
                        <span>Maps</span>
                    </a>
                    <ul class="ml-menu">
                        <li <c:if test="${fn:contains(content, 'pages/maps/google-map.jsp')}">class="active"</c:if>>
                            <a href="/maps/google-map">Google Map</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/maps/yandex-map.jsp')}">class="active"</c:if>>
                            <a href="/maps/yandex-map">Yandex Map</a>
                        </li>
                        <li <c:if test="${fn:contains(content, 'pages/maps/jvector-map.jsp')}">class="active"</c:if>>
                            <a href="/maps/jvector-map">jVector Map</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <i class="material-icons">trending_down</i>
                        <span>Multi Level Menu</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <a href="javascript:void(0);">
                                <span>Menu Item</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span>Menu Item - 2</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="menu-toggle">
                                <span>Level - 2</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="javascript:void(0);">
                                        <span>Menu Item</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" class="menu-toggle">
                                        <span>Level - 3</span>
                                    </a>
                                    <ul class="ml-menu">
                                        <li>
                                            <a href="javascript:void(0);">
                                                <span>Level - 4</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="pages/changelogs.html">
                        <i class="material-icons">update</i>
                        <span>Changelogs</span>
                    </a>
                </li>
                <li class="header">LABELS</li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="material-icons col-red">donut_large</i>
                        <span>Important</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="material-icons col-amber">donut_large</i>
                        <span>Warning</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="material-icons col-light-blue">donut_large</i>
                        <span>Information</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- #Menu -->
        <!-- Footer -->
        <div class="legal">
            <div class="copyright">
                &copy; 2016 - 2017 <a href="javascript:void(0);">AdminBSB - Material Design</a>.
            </div>
            <div class="version">
                <b>Version: </b> 1.0.5
            </div>
        </div>
        <!-- #Footer -->
    </aside>
    <!-- #END# Left Sidebar -->
    <!-- Right Sidebar -->
    <aside id="rightsidebar" class="right-sidebar">
        <ul class="nav nav-tabs tab-nav-right" role="tablist">
            <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
            <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                <ul class="demo-choose-skin">
                    <li data-theme="red" class="active">
                        <div class="red"></div>
                        <span>Red</span>
                    </li>
                    <li data-theme="pink">
                        <div class="pink"></div>
                        <span>Pink</span>
                    </li>
                    <li data-theme="purple">
                        <div class="purple"></div>
                        <span>Purple</span>
                    </li>
                    <li data-theme="deep-purple">
                        <div class="deep-purple"></div>
                        <span>Deep Purple</span>
                    </li>
                    <li data-theme="indigo">
                        <div class="indigo"></div>
                        <span>Indigo</span>
                    </li>
                    <li data-theme="blue">
                        <div class="blue"></div>
                        <span>Blue</span>
                    </li>
                    <li data-theme="light-blue">
                        <div class="light-blue"></div>
                        <span>Light Blue</span>
                    </li>
                    <li data-theme="cyan">
                        <div class="cyan"></div>
                        <span>Cyan</span>
                    </li>
                    <li data-theme="teal">
                        <div class="teal"></div>
                        <span>Teal</span>
                    </li>
                    <li data-theme="green">
                        <div class="green"></div>
                        <span>Green</span>
                    </li>
                    <li data-theme="light-green">
                        <div class="light-green"></div>
                        <span>Light Green</span>
                    </li>
                    <li data-theme="lime">
                        <div class="lime"></div>
                        <span>Lime</span>
                    </li>
                    <li data-theme="yellow">
                        <div class="yellow"></div>
                        <span>Yellow</span>
                    </li>
                    <li data-theme="amber">
                        <div class="amber"></div>
                        <span>Amber</span>
                    </li>
                    <li data-theme="orange">
                        <div class="orange"></div>
                        <span>Orange</span>
                    </li>
                    <li data-theme="deep-orange">
                        <div class="deep-orange"></div>
                        <span>Deep Orange</span>
                    </li>
                    <li data-theme="brown">
                        <div class="brown"></div>
                        <span>Brown</span>
                    </li>
                    <li data-theme="grey">
                        <div class="grey"></div>
                        <span>Grey</span>
                    </li>
                    <li data-theme="blue-grey">
                        <div class="blue-grey"></div>
                        <span>Blue Grey</span>
                    </li>
                    <li data-theme="black">
                        <div class="black"></div>
                        <span>Black</span>
                    </li>
                </ul>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="settings">
                <div class="demo-settings">
                    <p>GENERAL SETTINGS</p>
                    <ul class="setting-list">
                        <li>
                            <span>Report Panel Usage</span>
                            <div class="switch">
                                <label><input type="checkbox" checked><span class="lever"></span></label>
                            </div>
                        </li>
                        <li>
                            <span>Email Redirect</span>
                            <div class="switch">
                                <label><input type="checkbox"><span class="lever"></span></label>
                            </div>
                        </li>
                    </ul>
                    <p>SYSTEM SETTINGS</p>
                    <ul class="setting-list">
                        <li>
                            <span>Notifications</span>
                            <div class="switch">
                                <label><input type="checkbox" checked><span class="lever"></span></label>
                            </div>
                        </li>
                        <li>
                            <span>Auto Updates</span>
                            <div class="switch">
                                <label><input type="checkbox" checked><span class="lever"></span></label>
                            </div>
                        </li>
                    </ul>
                    <p>ACCOUNT SETTINGS</p>
                    <ul class="setting-list">
                        <li>
                            <span>Offline</span>
                            <div class="switch">
                                <label><input type="checkbox"><span class="lever"></span></label>
                            </div>
                        </li>
                        <li>
                            <span>Location Permission</span>
                            <div class="switch">
                                <label><input type="checkbox" checked><span class="lever"></span></label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </aside>
    <!-- #END# Right Sidebar -->
</section>