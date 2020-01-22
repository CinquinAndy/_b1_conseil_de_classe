<?php include "header.php";
mon_header("Page de Connexion");

?>
<h1 class="titleCenter">Accueil</h1>
<h2 class="titleCenter">Orientation - Choix élèves</h2>

<form action="actionInsertProf.php" method="post">
    <table class="table bg-secondary">
        </br>
        <div>Prof</div>
        <tr>
            <th class="text-light">ID</th>
            <th class="text-light">Nom</th>
            <th class="text-light">Prenom</th>
            <th class="text-light">Matiere</th>
        </tr>

        <?php for ($i = 1;
                   $i < 14;
                   $i++) { ?>

            <tr>
                <td class="tableau1">
                    <div class="form-group">
                        <input type="number" class="form-control" id="compteur"
                               readonly
                               name="compteur"
                               value="<?php echo $i?>">
                    </div>
                </td>
                <td class="col-auto">
                    <div class="form-group">
                        <input type="text" class="form-control" id="nom<?php echo $i; ?>"

                               name="nom<?php echo $i?>"
                               value="">
                    </div>
                </td>
                <td class="col-auto">
                    <div class="form-group">
                        <input type="text" class="form-control" id="prenom<?php echo $i?>"
                               name="prenom<?php echo $i?>" value="">
                    </div>
                </td>
                <td class="col-auto">
                    <div class="form-group">
                        <input type="text" class="form-control" id="matiere<?php echo $i?>"
                               name="matiere<?php echo $i?>" value="">
                    </div>
                </td>
            </tr>
        <?php } ?>


        <table class="table bg-secondary">
            <div class="d-flex justify-content-end">
                <button name="save" type="submit" class="btn btn-primary"><i class="fas fa-sync-alt"></i> Save
                </button>
            </div>
        </table>
    </table>
</form>
<?php include "footer.php";
mon_footer();
?>
