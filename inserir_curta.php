
<?php

$sql = "SELECT * FROM usuario WHERE cod = $cod";
$rs= mysqli_query($conn, $sql);
$user = mysqli_fetch_array($rs);

$nivel_necessario = 2;

  // Verifica se não há a variável da sessão que identifica o usuário
  if ($user['nivel'] == $nivel_necessario) { ?>
        <div class="btn-curta">
    <button class="btn-add">Adicionar Curta</button>
  </div>

<!--Modal cadastro curta-->
<div id="modal-curta" class="modal-container">
  <div class="modal">

    <form enctype="multipart/form-data" action="../php/upload.php" method="POST">
      <button class="fechar">X</button>
      <p class="alinhar">
        <input type="text" name="titulo" class="input-modificar" placeholder="Digite o nome do Curta">
      </p>
      <p class="alinhar">
        <input type="text" name="sinopse" class="input-modificar" placeholder="Digite a Sinopse">
      </p>
      <p class="alinhar">
        <input type="time" name="duracao" class="input-modificar" placeholder="Digite a duração do Curta">
      </p>
      <p class="alinhar"> 
        Enviar arquivo:
      <input name="userfile" type="file" />
      <input type="hidden" name="MAX_FILE_SIZE" value="50000000" /> 
      </p>
      <p class="alinhar">
          <select name="ano" class="input-modificar">
          <option selected disabled value="">Ano de produção</option>
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
      </p>
      <p class="alinhar">
        <input type="text" name="video" class="input-modificar" placeholder="Insira o link do Curta">
      </p>
      <p>
        <select class="input-modificar" name="turma">
          <option selected disabled value="">Qual turma produziu</option>
          <option value="1">1°A</option>
          <option value="2">1°B</option>
          <option value="3">1°H</option>
          <option value="4">2°A</option>
          <option value="5">2°B</option>
          <option value="6">2°H</option>
          <option value="7">3°A</option>
          <option value="8">3°B</option>
          <option value="9">3°H</option>
        </select>

        <select class="input-modificar" name="tema">
          <option selected disabled value="">Escolha o Tema</option>
          <option value="1">Abuso Infantil</option>
          <option value="2">Homofobia</option>
          <option value="3">Intolerância Religiosa</option>
          <option value="7">Luta Agrária</option>
          <option value="4">Racismo</option>
          <option value="5">Violência a mulher</option>
          <option value="6">Xenofobia</option>
        </select>

        <select class="input-modificar" name="genero">
          <option selected disabled value="">Escolha o Genero</option>
          <option value="1">Drama</option>
          <option value="2">Documentário</option>
          <option value="3">Comédia</option>
          <option value="4">Terror</option>
          <option value="5">Suspense</option>
          <option value="6">Romance</option>
        </select>
      </p>
      <p class="alinhar">
        <input type="submit" name="enviar" class="btn-input-modificar" value="Registrar">
      </p>
    </form>
  </div>
</div> 
