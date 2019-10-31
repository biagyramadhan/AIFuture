<?php
$koneksi = mysqli_connect("localhost","root","","belajar_teknologi");
if (!$koneksi) {
  echo "<h1>Tolong hubungkan database terlebih dahulu, ada di folder database dengan nama belajar_teknologi</h1>";
  exit;
}
if (!$_GET["kategori"]) {
  echo "<script>document.location.href='../informasi.php';</script>";
}
$kategori = $_GET["kategori"];
$query = "SELECT * FROM konten_program WHERE kategori = '$kategori'";
$execute = mysqli_query($koneksi,$query);
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Belajar AIFuture</title>
    <link rel="stylesheet" href="../../../css/kategori/weak-ai/belajar.css">
    <link rel="stylesheet" href="../../../css/bootstrap.min.css">
    <script type="text/javascript" src="../../../js/jquery-3.3.1.slim.min.js"></script>
    <script type="text/javascript" src="../../../js/bootstrap.min.js"></script>
  </head>
  <body>

    <!-- Nav -->
     <header>

          <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
            <a class="navbar-brand text-dark" href="../../../index.html">AIFuture</a>
            <button class="navbar-toggler navbar-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="../index.html" id="teks">WEAK AI <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../belajar.php" id="teks">BELAJAR</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../informasi.php" id="teks">INFORMASI</a>
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
          <h1>Yuk Belajar !</h1>
          <p>Belajar dan dapatkan informasi Kecerdasan buatan yang dapat mengubah dunia menjadi lebih baik dan efisien. Dan dapat berkembang untuk menyelesaikan sebuah permasalahan.</p>
          <p></p>
          <a href="#profile" class="btn btn-outline-light">Lihat Selengkapnya</a>
        </div>
      </div>
    </div>

    <div class="pengenalan" id="profile">
      <div class="container contents">
        <div class="content-profile">
          <div class="row">
            <div class="col-12">
                <h3 style="font-weight:600;padding-top:20px" class="text-dark">Belajar <?= $kategori; ?></h3>
                <?php foreach ($execute as $result): ?>
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title"><?= $result['judul']; ?></h5>
                      <p class="card-text"><?= $result['sub_judul']; ?></p>
                      <div class="text-right">
                        <a href="details-program.php?id=<?= $result['id_konten']; ?>" class="btn btn-info">Belajar</a>
                      </div>
                    </div>
                  </div>
                <?php endforeach; ?>
              </div>
            </div>
          </div>
        </div>
      </div>

  </body>
</html>
