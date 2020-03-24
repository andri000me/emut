<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="<?= base_url('assets/login/'); ?>images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>css/util.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>css/main.css">
    <!--===============================================================================================-->
</head>

<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form class="login100-form validate-form" method="POST" action="<?php echo base_url('login/') ?>">
                    <span class=" login100-form-title p-b-26">
                        LOGIN E-MUTASI
                    </span>
                    <span class="login100-form-title p-b-48">
                        <img src="<?= base_url('assets/'); ?>img/cilacap.png" alt="" style="width:50px;height:70px;">
                    </span>

                    <?php if (isset($error)) {
                        echo $error;
                    }; ?>

                    <div class="wrap-input100 validate-input">
                        <input class="input100" type="text" name="npsn">
                        <?php echo form_error('npsn'); ?>
                        <span class="focus-input100" data-placeholder="NPSN"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <span class="btn-show-pass">
                            <i class="zmdi zmdi-eye"></i>
                        </span>
                        <input class="input100" type="password" name="password">
                        <?php echo form_error('password'); ?>
                        <span class="focus-input100" data-placeholder="Password"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button class="login100-form-btn" type="submit">
                                Login
                            </button>
                        </div>
                    </div>

                    <div class="text-center p-t-115">
                        <span class="txt1">
                            Gagal Login?
                        </span>

                        <a class="txt2" href="<?= base_url('helpdesk'); ?>">
                            Kontak Administrator
                        </a> <br>
                        <a class="txt2" href="<?= base_url('auth'); ?>">
                            Kembali ke Beranda
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/bootstrap/js/popper.js"></script>
    <script src="vvendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/daterangepicker/moment.min.js"></script>
    <script src="<?= base_url('assets/login/'); ?>vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="<?= base_url('assets/login/'); ?>js/main.js"></script>

</body>

</html>