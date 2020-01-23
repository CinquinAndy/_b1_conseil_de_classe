<?php include "header.php";
mon_header("Page de Connexion");

?>
<h1 class="titleCenter">Accueil</h1>
<h2 class="titleCenter">Orientation - Choix élèves</h2>

<form action="actionInsertProf.php" method="post">
    <table class="table bg-secondary">
        </br>

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
