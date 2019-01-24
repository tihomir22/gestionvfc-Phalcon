<html><head>



    <section class="content container-fluid">




        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Tabla Facturas</h3>

                    <div class="box-tools">
                        <div class="input-group input-group-sm" style="width: 150px;">
                            <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody><tr>
                            <th>#</th>
                            <th>Data</th>
                            <th>Total</th>
                            <th>Servida</th>
                            <th>Observaciones</th>
                            <th>Opciones</th>
                        </tr>
                        {% set total=0 %}
                        {% for comanda in arrayComandes %}

                            <tr >
                                <td>{{ comanda.numero }}</td>
                                <td>{{ comanda.data }}</td>
                                <td class="badge bg-red"  >{{ comanda.total }}</td>
                                <td>{{ comanda.servida }}</td>
                                <td>{{ comanda.observaciones }}</td>

                                <td style="margin: 0px;padding: 2px;">
                                    <a href="{{ url('comandes/ver/'~comanda.numero) }}" class="btn btn-primary" ><i class="fa fa-eye"></i></a>
                                    <a href="{{ url('comandes/modificarcomanda/'~comanda.numero) }}" class="btn btn-info" ><i class="fa fa-cogs"></i></a>
                                </td>
                            </tr>




                            {% set total = total + comanda.total %}
                        {% endfor %}
                        </tbody>



                    </table>
                    <a class="btn btn-block btn-social btn-github">
                        <i class="fa fa-plus"></i> Añadir más facturas
                    </a>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>



    </section>






    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 3 -->
    <script src="/gestionvfc-Phalcon/public/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="/gestionvfc-Phalcon/public/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/gestionvfc-Phalcon/public/adminlte/dist/js/adminlte.min.js"></script>



    <!-- Optionally, you can add Slimscroll and FastClick plugins.
         Both of these plugins are recommended to enhance the
         user experience. -->
    <script>
        //resaltar l'opció de menu activa:
        $(document).ready(function () {
            var cambio = false;
            $('.sidebar-menu li a').each(function (index) {
                if (this.href.trim() == window.location) {
                    $(this).parent().addClass("active");
                    cambio = true;
                } else {
                    $(this).parent().removeClass("active");
                    cambio = false;
                }
            });
            if (!cambio) {
                $('.sidebar-menu li:first').addClass("active");
            }

        });
    </script>
    <script>
        $(document).on('click',function(){
            $('.collapse').collapse('hide');
        })
    </script>
    <script type="text/javascript" src="/gestionvfc-Phalcon/public/js/bootstrap-filestyle.min.js"> </script>
