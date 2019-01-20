<html><head>



        <section class="content container-fluid">


                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Tabla de pagaments</h3>

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
                                    <th>Num.</th>
                                    <th>Data</th>
                                    <th>Import</th>
                                    <th>Tipus</th>
                                    <th>Observacions</th>
                                </tr>

                                <?php $total = 0; ?>
                                <?php foreach ($arrayPagaments as $pago) { ?>

                                    <tr>
                                        <td><?= $pago->numero ?></td>
                                        <td><?= $pago->data ?></td>
                                        <td><?= $pago->import ?></td>
                                        <td class="badge bg-green"  ><?= $pago->Tipus ?></td>
                                        <td><?= $pago->observacions ?></td>
                                        <td style="margin: 0px;padding: 2px;">
                                            <a href="<?= $this->url->get('pagaments/pago/' . $pago->numero) ?>" type="button" class="btn btn-info" ><i class="fa fa-edit"></i></a>
                                        </td>
                                    </tr>
                                    <?php $total = $total + $pago->import; ?>
                                    <?php } ?>


                                </tbody></table>
                            <div style="margin: 10px;">
                                <hr>
                                <p>Num. pagaments: <label class="badge bg-green"> <?= $pago->count() ?> </label><hr> Total : <label class="badge bg-aqua-active color-palette"> <?= $total ?> € </label></p>
                            </div>
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
<script type="text/javascript" src="/gestionvfc-Phalcon/public/js/bootstrap-filestyle.min.js"> </script>
