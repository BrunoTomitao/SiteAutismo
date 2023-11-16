<?php
    include "header.php";
    include "config.php";


?>
<link rel="stylesheet" href="contato.css">

<form method="post" action="textContato.php">
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" required>

    <label for="telefone">Telefone:</label>
    <input type="tel" id="telefone" name="telefone" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="mensagem">Mensagem:</label>
    <textarea id="mensagem" name="mensagem" rows="4" required></textarea>

    <input type="submit" value="Enviar">
</form>

<?php
    include "footer.php";
?>

</body>
</html>