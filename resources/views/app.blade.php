<!doctype html>
<html lang="en">
<head>
    <title>Test Junior Programmer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body style="background: lightgray">

        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
                <div class="p-4 pt-5">
                <h1><a href="{{ route('test.index') }}" class="logo">Beranda</a></h1>
            <ul class="list-unstyled components mb-5">
            {{-- <li>
                <a href="inputdata.php">Input Data</a>
            </li> --}}

            </ul>
            <div class="footer">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Test Junior Programmer | Nasrudin Iqrok Mulloh <i class="icon-heart" aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>

        </div>
        </nav>

        <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">

        <div class="container mt-5">
            {{-- @include('flash::message') --}}
            @yield('content')
        </div>
        </div>

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/popper.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
</body>
</html>
