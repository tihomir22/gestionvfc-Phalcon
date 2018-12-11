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
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs"> <!-- hi ha 3 tabs (separaddors) -->
                        <li class="active"><a href="#tab_1" data-toggle="tab">Personals</a></li>
                        <li><a href="#tab_2" data-toggle="tab">Documentació</a></li>
                        <li><a href="#tab_3" data-toggle="tab">Observacions</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1"> <!-- contingut del tab 1 -->
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="form-group">
                                        <label>DNI:</label><span class="text-yellow">(*)</span>
                                        <input type="text" class="form-control" placeholder="DNI" name="dni" value="{{ usuari.dni }}" required="">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Data Caducitat:</label><span class="text-yellow">(*)</span>
                                        <input type="date" class="form-control" name="datacaducitat" required="">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Nom:</label><span class="text-yellow">(*)</span>
                                        <input type="text" class="form-control" placeholder="Nom" name="nom" value="{{ usuari.nom }}" required="">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Cognoms:</label><span class="text-yellow">(*)</span>
                                        <input type="text" class="form-control" placeholder="Cognoms" name="cognoms" value="{{ usuari.cognoms }}" required="">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group">
                                        <label>EMail:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                            <input type="text" class="form-control" value="{{ usuari.email }}" disabled="disabled">
                                        </div>
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Data Naixement:</label>
                                        <input type="date" class="form-control" name="datanaixement">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Nacionalitat:</label>
                                        <input type="text" class="form-control" placeholder="País de naixement" name="nacionalitat" value="{{ usuari.nacionalitat }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Cicle Formatiu:</label><span class="text-yellow">(*)</span>

                                        <select class="form-control" id="cicle" name="cicle" required {{ alta is defined?'':'readonly' }}>
                                            {% for cicle in cicles %}
                                                <option value="{{ cicle.codi }}" selected="selected">{{ cicle.titol }}</option>
                                            {% endfor %}
                                        </select>

                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Adreça:</label>
                                        <input type="text" class="form-control" placeholder="Adreça" name="adreca" value="{{ usuari.adreca }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="form-group">
                                        <label>CP:</label>
                                        <input type="text" class="form-control" placeholder="Codi Postal" name="cp" value="{{ usuari.cp }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Població:</label>
                                        <input type="text" class="form-control" name="poblacio" placeholder="Població" value="{{ usuari.poblacio }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Mòbil:</label>
                                        <input type="text" class="form-control" placeholder="Telef. mòbil" name="telefon1" value="{{ usuari.telefon1 }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Telèfon 2:</label>
                                        <input type="text" class="form-control" placeholder="Telèfon casa" name="telefon2" value="{{ usuari.telefon2 }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Telèfon 3:</label>
                                        <input type="text" class="form-control" placeholder="Altre telèfon" name="telefon3" value="{{ usuari.telefon3 }}">
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="form-group">
                                        <label>Sexe:&nbsp;&nbsp;</label>
                                        <input type="radio" name="sexe" checked="checked">Home&nbsp;&nbsp;
                                        <input type="radio" name="sexe">Dona
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                            </div>
                        </div> <!-- tab_1 -->
                        <!-- TAB 2 -------------------------------------------------->
                        <div class="tab-pane" id="tab_2"> <!-- Contingut del Tab 2 -->
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="form-group">
                                        <label>Imatge DNI</label><span class="text-yellow">&nbsp;Obligatori</span>
                                        <input id="dniocult" name="dniocult" type="hidden">
                                        <input onchange="va()" class="filestyle" type="file" data-buttonname="btn-primary" data-size="md" name="btDNI" data-placeholder="{{ usuari.fotodni }}" data-buttontext="&nbsp;Pujar">
                                    </div>
                                </div>
                                <div class="col-md-2"><label>&nbsp;</label><br><a class="btn btn-social-icon btn-danger" href="#" onclick="campBuit('#dniocult')" title="Borrar DNI"><i class="glyphicon glyphicon-remove-sign"></i></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-7">
                                    <img class="img-thumbnail" src="index.volt_files/usuari.htm" alt="Imatge DNI">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="form-group">
                                        <label>Autorització pares</label><span class="text-yellow">&nbsp;Obligatori menors edat</span>
                                        <input id="autoocult" name="autoocult" type="hidden">
                                        <input onchange="va()" class="filestyle" type="file" data-buttonname="btn-primary" data-size="md" name="btAuto" data-placeholder="{{ usuari.autoritzacio }}" data-buttontext="&nbsp;Pujar">
                                    </div>
                                </div>
                                <div class="col-md-2"><label>&nbsp;</label><br><a class="btn btn-social-icon btn-danger" href="#" onclick="campBuit('#autoocult')" title="Borrar Autorització"><i class="glyphicon glyphicon-remove-sign"></i></a>
                                </div>
                            </div>
                        </div><!-- tab_2 -->

                        <!-- TAB 3 -------------------------------------------------->
                        <div class="tab-pane" id="tab_3"> <!-- Contingut del Tab 3 -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Observacions</label>
                                        <textarea class="form-control" name="observacions" rows="10">{{ usuari.observacions }}</textarea>
                                    </div>
                                </div>

                            </div>
                        </div><!-- tab_3 -->
                    </div> <!-- tab content -->
                </div> <!-- nav -->
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