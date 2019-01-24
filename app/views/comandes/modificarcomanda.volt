<html><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"></head><body><div class="row">
    <div class="col-md-6 col-md-offset-3">
        <!-- url('controlador/acció') és una funció que genera l'url necessària per accedir dins l'aplicació a una acció d'un controlador -->
        <form action="{{ url('dades/guarda/') }}" method="POST" enctype="multipart/form-data">
            <div class="box box-danger"> <!-- els tabs estan dins d'un box, aixì podem tindre un peu on posar els botons -->
                <div class="box-header with-border">
                    <h3 class="box-title">Dades d'usuaris</h3>
                    <!-- missatges que venen del controlador: dades guardades amb èxit, errors al guardar, etc -->
                    {%  if missatge is defined %}
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-check"></i> {{ missatge }}</h4>
                        </div>
                    {% endif %}
                    {% if errors is defined %}
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-times-circle"></i>
                                {% for error in errors %}
                                    Error:  {{ error.getMessage() }} Camp: {{ error.getField() }} <br>
                                {% endfor %}
                            </h4>
                        </div>
                    {% endif %}
                </div>
                <!-- Custom Tabs -->
                <div>

                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon">@</span>
                                    <input type="text" class="form-control" placeholder="Username" value="{{ comanda.numero }}">
                                </div>
                            </div>


                        <div class="col-xs-6">
                            <div class="input-group ">
                                <input type="text" class="form-control"  value="{{ comanda.data }}">
                                <span class="input-group-addon">Fecha</span>
                            </div>
                        </div>
                        </div>
                        <br>

                        <div class="input-group">
                            <span class="input-group-addon">$</span>
                            <input type="text" class="form-control" value="{{ comanda.total}}">
                            <span class="input-group-addon">.00</span>
                        </div>

                        <h4>With icons</h4>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <br>

                        <div class="input-group">
                            <input type="text" class="form-control">
                            <span class="input-group-addon"><i class="fa fa-check"></i></span>
                        </div>
                        <br>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                            <input type="text" class="form-control">
                            <span class="input-group-addon"><i class="fa fa-ambulance"></i></span>
                        </div>

                        <h4>With checkbox and radio inputs</h4>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="input-group">
                        <span class="input-group-addon">
                          <input type="checkbox">
                        </span>
                                    <input type="text" class="form-control">
                                </div>
                                <!-- /input-group -->
                            </div>
                            <!-- /.col-lg-6 -->
                            <div class="col-lg-6">
                                <div class="input-group">
                        <span class="input-group-addon">
                          <input type="radio">
                        </span>
                                    <input type="text" class="form-control">
                                </div>
                                <!-- /input-group -->
                            </div>
                            <!-- /.col-lg-6 -->
                        </div>
                        <!-- /.row -->

                        <h4>With buttons</h4>

                        <p class="margin">Large: <code>.input-group.input-group-lg</code></p>

                        <div class="input-group input-group-lg">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Action
                                    <span class="fa fa-caret-down"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <!-- /btn-group -->
                            <input type="text" class="form-control">
                        </div>
                        <!-- /input-group -->
                        <p class="margin">Normal</p>

                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-danger">Action</button>
                            </div>
                            <!-- /btn-group -->
                            <input type="text" class="form-control">
                        </div>
                        <!-- /input-group -->
                        <p class="margin">Small <code>.input-group.input-group-sm</code></p>

                        <div class="input-group input-group-sm">
                            <input type="text" class="form-control">
                            <span class="input-group-btn">
                      <button type="button" class="btn btn-info btn-flat">Go!</button>
                    </span>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- peu: botons d'acció de l'usuari -->
                <button class="btn btn-app bg-blue" type="submit">
                    <i class="fa fa-save"></i> Guardar
                </button>
                <button class="btn btn-app bg-orange" type="reset">
                    <i class="fa fa-undo"></i> Cancelar
                </button>
                <a class="btn btn-app bg-red" href="http://www.ieslluissimarro.org/moodle/pluginfile.php/68404/mod_resource/content/2/%7B%7B%20url('usuaris')%20%7D%7D">
                    <i class="fa fa-home"></i> Tornar
                </a>
            </div> <!-- box -->
        </form>

    </div> <!-- col -->
</div><!-- row principal --></body></html>