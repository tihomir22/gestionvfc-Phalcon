<div class="box box-danger" style="padding: 20px;">
    <div class="box-header with-border">
        <h3 class="box-title">Input Addon</h3>
    </div>
    <div class="box-body">
        <div class="row">
            <div class="col-md-4">
                <label for="numero">Numero</label>
                <div class="input-group" style="width: 100%;">
                    <input type="text" name="numero" class="form-control" placeholder="Numero de id" value="<?= $pago->numero ?>" <?php if ($this->session->get('tipus') == 'U') { ?>
                    disabled <?php } ?>>
                </div>
            </div>
            <div class="col-md-4">
                <label for="data">Data</label>
                <div class="input-group" style="width: 100%;">
                    <input type="date" class="form-control" name="data" style="text-align: center;" value="<?= $pago->data ?>" <?php if ($this->session->get('tipus') == 'U') { ?>
                    disabled <?php } ?>>
                </div>
            </div>
            <div class="col-md-4">
                <label for="import">Import</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="import" value="<?= $pago->import ?>" <?php if ($this->session->get('tipus') == 'U') { ?>
                    disabled <?php } ?>>
                    <span class="input-group-addon bg-aqua">€</span>
                </div>
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col-xs-4">
                <label for="numero">Tipus</label>
                <div class="input-group" style="width: 100%;">
                    <input type="text" class="form-control" value="<?= $pago->tipus ?>" <?php if ($this->session->get('tipus') == 'U') { ?>
                    disabled <?php } ?>>
                </div>
            </div>
            <div class="col-xs-8">
                <label for="numero">Observacions</label>
                <div class="input-group" style="width: 100%;">
                    <input type="text" class="form-control" value="<?= $pago->observacions ?>" <?php if ($this->session->get('tipus') == 'U') { ?>
                    disabled <?php } ?>>
                </div>
            </div>
        </div>



        <br>

        <div class="row">
            <a class="btn btn-app bg-blue" <?php if ($this->session->get('tipus') == 'U') { ?>
            disabled <?php } ?>>
                <i class="fa fa-save "></i> Guardar
            </a>
            <a class="btn btn-app bg-blue" <?php if ($this->session->get('tipus') == 'U') { ?>
            disabled <?php } ?>>
                <i class="fa fa-repeat"></i> Cancelar
            </a>
            <a class="btn btn-app bg-blue">
                <i class="fa fa-arrow-left"></i> Tornar
            </a>
            <a class="btn btn-app bg-red">
                <i class="fa fa-home"></i> Inici
            </a>
        </div>



    </div>

</div>
</div>


</section>
<!-- /.content -->

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
