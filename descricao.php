<?php
    include "header.php";
    include "config.php";

    $id= $_GET["id"];
    
    if(!empty($id)){
        $sql = "select * from  img WHERE id = '$id'";
        $consulta= $pdo->query($sql);
        $consulta -> execute();
    
    
        $img = $consulta->fetch(PDO::FETCH_ASSOC); 
    }
    
?>
<link rel="stylesheet" href="descricao.css">
<main>
    <div class="row-2">
        <div class="decorated-box">
        <div>
            <img src="./<?=$img["imagem"]?>" alt="<?=$img["nome"]?>">
        </div>

        <div >
            <strong><?=$img["nome"]?></strong> <br>
                    <?=$img["sobre"]?><br>

            
        </div>
        </div>
    </div>
</main>


<?php
include "footer.php";
?>