<?php
$koneksi = mysqli_connect("localhost","root","","belajar_teknologi");
if (!$koneksi) {
  echo "<h1>Tolong hubungkan database terlebih dahulu, ada di folder database dengan nama belajar_teknologi</h1>";
  exit;
}
if (!$_GET["id"]) {
  echo "<script>document.location.href='../informasi.php';</script>";
}
$id = $_GET["id"];
$query = "SELECT * FROM informasi WHERE id_informasi = $id";
$execute = mysqli_query($koneksi,$query);
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Informasi AIFuture</title>
    <link rel="stylesheet" href="../../../css/kategori/weak-ai/detail/detail-info.css">
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

    <div class="pengenalan" id="profile">
      <div class="card container contents">
        <div class="content-profile">
          <?php foreach ($execute as $result ): ?>
            <div class="row">
              <div class="col-md-4">
                  <img src="../../../images/<?= $result['image']; ?>" class="card-img-top" alt="..." height="200px">
              </div>

              <div class="col-lg-8">
                  <h3 style="font-weight:600;font-size:28px" class="text-dark"><?= $result['judul']; ?></h3>
                  <h5 style="font-weight:400" class="text-dark"><?= $result['sub_judul']; ?></h5>
              </div>
            </div>

            <br>
            <div class="paragraph">
              <p><?= $result['isi_konten']; ?></p>
            </div>
          <?php endforeach; ?>
        </div>
      </div>

  </body>
</html>
