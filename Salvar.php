<?php 

//conecta com o banco de dados
require "conexao.php";

//dados são salvos pelo metodo de post;

//formulário de cadastro de usuário
	$nome = $_POST['nome_aluno'];
	$matricula = $_POST['matricula_aluno'];
	$datanasc = $_POST['data_nasc'];
	$email = $_POST['email_aluno'];
	$senha = $_POST['senha_aluno'];
	$curso = $_POST['curso'];
	$turma = $_POST['turma'];
	$nivel = "1";
// Check connection
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
  }
  $sql = "INSERT INTO usuario (nome, matricula, data_nasc, email, senha, curso, turma, nivel) values ('$nome','$matricula','$datanasc','$email','$senha','$curso','$turma','$nivel')"; 
  
  if (mysqli_query($conn, $sql)) {
	echo "New record created successfully";
	header('Location: login.html');
  } else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
  ?>