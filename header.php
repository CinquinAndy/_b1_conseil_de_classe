<?php function mon_header($title){ ?>
    <html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="description" content="Conseils">
        <title><?php echo $title ?></title>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/edc8d5fc95.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stylesheets.css">
    </head>
<body class="background">
<main class="container background">
    <nav class="navbar">
            <span class="navbar-brand mb-0 h1 col-4">
                <a href="index.php"><img src="love.jpg" alt="Lovz" id="sizeLogo"></a>
            </span>
    </nav>
<?php } ?>