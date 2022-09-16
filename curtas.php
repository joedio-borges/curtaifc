<?php
include("valida_session_curta.php");
include("conexao.php");

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script> 
  <script src="https://kit.fontawesome.com/36b801b814.js" crossorigin="anonymous"></script>
  <title>Curtas</title>
  <link rel="stylesheet" href="curtas.css">
</head>

<body>
  <header id="header">
    <a id="logo" href="index.html"><img id="img_logo" src="img/logopng.png"></a>
    <nav id="nav">
      <button aria-label="Abrir Menu" id="btn-mobile" aria-haspopup="true" aria-controls="menu" aria-expanded="false">Menu
        <span id="hamburger"></span>
      </button>
      <ul id="menu" role="menu">
        <li><button onclick="myFunction()" class="bot"><i class="fas fa-sun"></i></button></li>
        <li><a class="link-menu" href="oficinas.php">Oficinas</a></li>
        <li><a class="link-menu" href="premiacao.php">Premiações</a></li>
        <li><a class="link-menu" href="perfil.php">Perfil</a></li>
        <li><a class="link-menu" href="index.php">Início</a></li>
        <li><a class="link-menu" href="logout.php"><i class="fas fa-sign-out-alt"></i></a></li>
      </ul>
    </nav>
  </header>

  <main>
  <div class="container mt-3">
    <div class="row">
      <div class="col">
        <form action="pesquisa.php" method="post">
          <div class="input-pagina">
            <select name="genero" class="barra-pesquisa">
              <option selected disabled value="">Genero</option>
              <option value="1">Drama</option>
              <option value="5">Suspense</option>
              <option value="4">Terror</option>
              <option value="6">Romance</option>
              <option value="3">Comédia</option>
              <option value="2">Documentario</option>
            </select>
            <select name="tema" class="barra-pesquisa">
              <option selected disabled value="">Tema</option>
              <option value="1">Abuso Infantil</option>
              <option value="2">Homofobia</option>
              <option value="5">Violência a Mulher</option>
              <option value="3">Intolerância Religiosa</option>
              <option value="4">Racismo</option>
              <option value="6">Xenofobia</option>
              <option value="7">Luta Agrária</option>
            </select>
            <select name="ano" class="barra-pesquisa">
              <option selected disabled value="">Ano</option>
              <option value="1">2016</option>
              <option value="2">2017</option>
              <option value="3">2018</option>
              <option value="4">2019</option>
              <option value="5">2020</option>
              <option value="6">2021</option>
              <option value="7">2022</option>
              <option value="8">2023</option>
              <option value="9">2024</option>
              <option value="10">2025</option>
              <option value="11">2026</option>
              <option value="12">2027</option>
              <option value="13">2028</option>
              <option value="14">2029</option>
              <option value="15">2030</option>
              <option value="16">2031</option>
              <option value="17">2032</option>
              <option value="18">2033</option>
              <option value="19">2034</option>
              <option value="20">2035</option>
              <option value="21">2036</option>
              <option value="22">2037</option>
            </select>
            <input type="submit" name="bt_enviar" value="buscar" class="barra-pesquisa" />
          </div>
        </form>
      </div>
    </div>
    <div class="row">
      <?php
        $sql = "SELECT * FROM curta";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          echo '<table class="table table-hover"><tr><th>Título</th><th>Video</th><th>Capa</th><th>Sinopse</th><th>Duração</th></tr>';
          // output data of each row
          while ($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["titulo"]."</td><td><iframe width='380' src=".$row["video"]." title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe><br><a href=".$row["video"].">".$row["video"]."</a></td><td>".$row["imagem"]."</td><td>".$row["sinopse"]."</td><td>".$row["duracao"]."</td></tr>";
          }
          echo "</table>";
        } else {
          echo "0 results";
      }
      $conn->close();
      ?>
    </div>
  </div>
  </main>

  <footer>
    <div class="logo-rodape">
      <a href="#"><img class="_logo-rodape" src="img/logopng.png" alt="Ocorreu um erro no carregamento da imagem"></a>
    </div>

    <div class="texto_rodape">
      <p class="texto-rodape"><span>&copy; Todos os direitos reservados ao</span> <span><a href="http://sombrio.ifc.edu.br/" target="_blank" id="linkrodape">Instituto Federal Catarinense Campus Avançado Sombrio</a></span></p>
    </div>

    <div class="social-midia">
      <a href="https://www.instagram.com/curtaifc/" target="_blank"><img class="social" src="img/instagram.png" alt="Ocorreu um erro no carregamento da imagem"></a>
      <a href="https://twitter.com/curta_ifc" target="_blank"><img class="social" src="img/twitter.png" alt="Ocorreu um erro no carregamento da imagem"></a>
    </div>

  </footer>
  <script src="curta-script.js"></script>
</body>

</html>