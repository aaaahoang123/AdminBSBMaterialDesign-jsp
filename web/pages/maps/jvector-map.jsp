<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 2018-05-20
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="container-fluid">
    <div class="block-header">
        <h2>
            JVECTORMAP
            <small>Taken from <a href="http://jvectormap.com/" target="_blank">jvectormap.com</a></small>
        </h2>
    </div>
    <!-- Example -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        EXAMPLE
                    </h2>
                    <ul class="header-dropdown m-r--5">
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="javascript:void(0);">Action</a></li>
                                <li><a href="javascript:void(0);">Another action</a></li>
                                <li><a href="javascript:void(0);">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    <div id="world-map-markers" class="jvector-map"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- #END# Example -->
</div>
<script src="https://maps.google.com/maps/api/js?v=3&sensor=false"></script>