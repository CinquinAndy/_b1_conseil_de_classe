<?php
function affichage(){
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

$request = $bd->prepare("select id,Nom,Prenom from eleve");
$request->execute();
$lines = $request->fetchAll();



?>
<h1 class="titleCenter">Accueil</h1>
<h2 class="titleCenter">Orientation - Choix élèves</h2>
<div class="container">

    <form id="form" action="index.php?resultat=1" method="post">
        <div class="form-group">
            <label for="sel1">Selection de l'eleve :</label>
            <input type="hidden" id="idEleve" name="idEleve" value="">
            <select class="form-control" id="selectEleve" name="selectEleve">
                <option value="" selected>Selectionner un Eleve</option>
                <?php
                foreach ($lines as $line) {
                    ?>
                    <option value="<?php echo $line["id"] ?>"><?php echo $line["Nom"] ?> - <?php echo $line["Prenom"] ?></option>
                    <?php
                }
                ?>
            </select>
            <div class="float-right my-3">
                <button id="btnSend" disabled type='submit' class="btn btn-primary">
                    Selection
                </button>
            </div>
        </div>
    </form>
</div>

<script>
    $(document).ready(function () {
        $('#selectEleve').change(function () {
            if ($(this).val() != '') {
                $('#idEleve').val($(this).val());
                $('#btnSend').removeAttr("disabled", "disabled");
            } else {
                $('#idEleve').val('');
                $('#btnSend').attr("disabled", "disabled");
            }
        });
    });
</script>
<?php

}
?>
<!--    <script>-->
<!--        var result = document.querySelector('#result');-->
<!--        var form = document.querySelector('#form');-->
<!--        var button = form.querySelector('button[type=submit]');-->
<!--        var buttonText=button.textContent;-->
<!--        form.addEventListener('submit', function(e){-->
<!--            button.disabled = true;-->
<!--            button.textContent= "Chargement...";-->
<!--            e.preventDefault();-->
<!--            var data = new FormData(form);-->
<!--            var httpRequest = new XMLHttpRequest();-->
<!--            httpRequest.onreadystatechange = function () {-->
<!--                if (httpRequest.readyState === 4) {-->
<!--                    result.innerHTML = '';-->
<!--                    if (httpRequest.status === 200) {-->
<!--                        result.innerHTML = httpRequest.responseText;-->
<!--                    } else {-->
<!--                        alert('impossible de contacter le serveur');-->
<!--                    }-->
<!--                }-->
<!--                button.disabled = false;-->
<!--                button = buttonText;-->
<!--                httpRequest.open('POST', 'index.php', true);-->
<!--                httpRequest.setRequestHeader('X-Requested-With', 'xmlhttprequest');-->
<!--                httpRequest.send(data);-->
<!--            }-->
<!--        })-->
<!---->
<!---->
<!---->
<!--    </script>-->