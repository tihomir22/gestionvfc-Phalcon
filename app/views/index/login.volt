<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="{{ url('index') }}"><b>Gestió</b>VFC</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Inicia sessió per a poder accedir</p>
        {% if error is defined %}
            <div class='alert alert-danger alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h4><i class='icon fa fa-times-circle'></i>
                    {{ error }}
                </h4>
            </div>
        {% endif %}
        <form action="{{ url('index/comprovaLogin') }}" method="post">
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="Email" name="email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="Password" name="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> Recorda'm
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Entrar</button>
                </div>
                <!-- /.col -->
            </div>
        </form>


        <a href="{{ url('index/recorda') }}">Recordar contrasenya</a><br>
        <a href="{{ url('index/registre') }}" class="text-center">Registrar-se</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->