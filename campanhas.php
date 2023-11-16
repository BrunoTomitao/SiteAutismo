<?php
include "header.php";
include "config.php";

$sql = "select * from img";
$consulta = $pdo->prepare($sql);
$consulta->execute();

$img = $consulta->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="row-2">
    <div class="decorated-box">
        <div class="col-sm-12 col-md-6">
        <img class="decorated-image" src="./<?= $img[4]["imagem"] ?>" alt="<?= $img[4]["nome"] ?>">
            <p>
                <strong>
                    <p><?= $img[4]["SobreTitulo"] ?></p>
                </strong>
            <p><?= $img[4]["sobre"] ?></p>
            </p>
            <a href="https://www.facebook.com/autistasdeumuaramaeregiao/?locale=pt_BR" target="_blank "><button type="button" class="btn btn-success">Doações</button></a>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>
