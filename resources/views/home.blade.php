<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" type="image/jpg" sizes="16x16" href="/poli.jpg">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <title>@yield('title', 'Sistem Poliklinik')</title>
    <link href="{{ asset('asset/vendor/select2/dist/css/select2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="{{ asset('asset/css/sb-admin-2.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="{{ asset('asset/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    {{-- swal --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.js"></script>

    <style>
    body {
        background: url("{{ asset('asset/img/bg-home1.jpg') }}") no-repeat;
        object-fit: contain;
        background-position: center;
        image-size: cover;
    }

    .daftar {
        box-shadow:
            0 1px 2px 0 rgba(60, 64, 67, .3), 0 1px 3px 1px rgba(60, 64, 67, .15);
        margin: 10px;
    }

    .row {
        width: 100%;
    }

    .logo {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-direction: column;
    }
    </style>
</head>

<body class="d-flex justify-content-center align-items-center">
    <form action="{{ route('store-user') }}" method="POST" style="margin-top: 50px">
        @csrf
        <div class="row">
            {{-- <label for="no_hp">No Rekam Medis :</label> --}}
            <input type="hidden" name="no_rm" value="{{ $no_rm }}" readonly class="form-control" id="no_hp" required />
            <div class="card daftar  p-3">
                <fieldset>
                    <legend class="form-header text-center">Form Pendaftaran Pasien</legend>
                    <div class="logo">
                        <img class="text-center mt-4" width="120px" src="{{ asset('asset/img/poli.jpg') }}"
                            alt="logo rs">
                        <h5 class="text-center text-dark mt-2"></h5>
                        <h3>Poliklinik</h3>


                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nama">Nama :</label>
                                <input type="text" name="nama" placeholder="Masukan nama..." class="form-control"
                                    id="nama" required />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="no_ktp">NIK :</label>
                                <input type="number" minlength="16" maxlength="16" name="no_ktp"
                                    placeholder="Masukan nik..." class="form-control" id="no_ktp" required />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="no_hp">No Hp :</label>
                                <input type="number" minlength="11" maxlength="13" name="no_hp"
                                    placeholder="Masukan no hp..." class="form-control" id="no_hp" required />
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="alamat">Alamat :</label>
                                <textarea class="form-control" placeholder="Masukan alamat..." name="alamat" id="alamat"
                                    rows="5"></textarea>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary w-100">SIMPAN</button>
                        </div>
                    </div>
                    <span class="d-block mt-2 mb-2 text-center text-dark">Sudah pernah daftar pasien? silhkan klik
                        daftar
                        poli</span>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="{{ route('daftarpolipasien') }}" class="btn btn-success w-100 text-white">DAFTAR
                                POLI
                            </a>
                        </div>
                    </div>
                </fieldset>
                <span class="text-dark text-center mt-2">Login sebagai Admin atau Dokter <a
                        class="text-dark text-center mt-2" href="{{ route('login') }}"><b><u>KLIK
                                DISINI</u></b></a></span>
            </div>
        </div>
    </form>


</body>

</html>