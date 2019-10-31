<?php
$koneksi = mysqli_connect("localhost","root","","belajar_teknologi");
if (!$koneksi) {
  echo "<h1>Tolong hubungkan database terlebih dahulu, ada di folder database dengan nama belajar_teknologi</h1>";
  exit;
}
$query = "SELECT * FROM informasi";
$execute = mysqli_query($koneksi,$query);
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Informasi AIFuture</title>
    <link rel="stylesheet" href="../../css/kategori/weak-ai/informasi.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <script type="text/javascript" src="../../js/jquery-3.3.1.slim.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
  </head>
  <body>

    <!-- Nav -->
     <header>

          <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
            <a class="navbar-brand text-dark" href="../../index.html">AIFuture</a>
            <button class="navbar-toggler navbar-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="index.html" id="teks">WEAK AI <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="belajar.php" id="teks">BELAJAR</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="informasi.php" id="teks">INFORMASI</a>
                </li>
              </ul>
            </div>
          </div>
          </nav>
     </header>

    <!-- header -->
    <div class="top-banner" id="home">
      <div class="container">
        <div class="content-header">
          <h1>Informasi</h1>
          <p>Dapatkan banyak informasi mengenai Artificial Intelegence dan jangan lupa untuk mempelajarinya !</p>
          <p></p>
          <a href="#profile" class="btn btn-outline-light">Lihat Selengkapnya</a>
        </div>
      </div>
    </div>

    <center><h3 style="margin-top:30px">Informasi Terbaru</h3></center>

    <div class="pengenalan" id="profile">
      <div class="container contents">
        <div class="content-profile">
          <div class="row">

            <?php foreach ($execute as $result): ?>
              <div class="col-12 col-sm-6 col-md-4 col-lg-4">
                  <div class="card" style="width: 18rem;">
                    <img src="../../images/<?= $result['image']; ?>" class="card-img-top" alt="..." height="150px">
                    <div class="card-body">
                      <h5 class="card-title text-dark"><?= $result['judul']; ?></h5>
                      <p class="card-text text-dark"><?= $result['sub_judul']; ?></p>
                      <div class="text-right">
                        <a href="detail/detail-info.php?id=<?= $result['id_informasi']; ?>" class="btn btn-outline-info btn-lg btn-block">DETAIL</a>
                      </div>
                    </div>
                  </div>
              </div>
            <?php endforeach; ?>

          </div>
        </div>
      </div>

  </body>
</html>
