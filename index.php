<?php
include "header.php";
include "config.php";


$sql = "select * from img";
$consulta = $pdo->prepare($sql);
$consulta->execute();

$img = $consulta->fetchAll(PDO::FETCH_ASSOC);
#shuffle($img);

#print_r($img)
?>

<div class="container" id="main-image-container">
    <div class="main-image center-image">
        <div class="main-image-info">
        </div>
    </div>
</div>

<?php


foreach ($img as $autismo) {
  if($autismo["tipo"] == "destaque"){

?>
    <div class="container" id="gallery-container">

        <div class="row-2">
            <div class="decorated-box">
                <div class="col-sm-12 col-md-6">
                    <div class="small-image-container center-image" id="img-2">

                        <img src="./<?= $autismo["imagem"] ?>" alt="<?= $autismo["nome"] ?>">
                        <h3><?= $autismo["nome"] ?></h3>
                        <p class="secondary-color">
                            <?= $autismo["SobreTitulo"] ?>
                        </p>
                        <a href="descricao.php?id=<?=$autismo["id"]?>" class="btn">Detalhes</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
}}
?>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</html>

<?php
include "footer.php";
?>