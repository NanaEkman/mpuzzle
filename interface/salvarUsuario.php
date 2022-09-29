<?php 
    session_start();

    $txtEmail = $_POST['txtEmail'];
    $txtNickname = $_POST['txtNickname'];
    $txtSenha = $_POST['txtSenha'];

    include_once "BD.php";

    $sql = "INSERT INTO Usuario(Nickname, Senha, Email) VALUES('$txtEmail', '$txtSenha', '$txtEmail')";

    if (mysqli_query($conn, $sql)) {
        mysqli_close($conn);

        header("Location: index(1).php");   
    }else{
        echo "Erro: " . $sql . "<br>" . mysqli_error($conn);
    }

?>