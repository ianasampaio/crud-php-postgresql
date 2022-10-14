<?php
require_once('../conexao/conectaBD.php');

session_start();

if (empty($_SESSION)) {
  header("Location: ../index.php?msgErro=Você precisa se autenticar no sistema.");
  die();
}
?>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Buscar Histórico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  </head>
  <body>

    <div class="container"> 
      <h1>Buscar Histórico</h1>
      <form action="lista_historico.php" method="post">

        <div class="col-4">
          <label for="nome_aluno">Nome aluno(a)</label>
          <input type="text" name="nome_aluno" id="nome_aluno" class="form-control">
        </div>
        
        <br />

        <button type="submit" name="enviarDados" class="btn btn-primary" value="ALN">Buscar</button>
        <a href="historico.php" class="btn btn-danger">Cancelar</a>

      </form>
    </div>
  </body>
</html>
