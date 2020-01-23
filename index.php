<?php include "header.php";
mon_header("Page de Connexion");
include "selectListEleve.php";
include "actionSelectionEleve.php";
$id_eleve=0;

$reponse=filter_input(INPUT_GET,'resultat');

?>

<?php
    affichage();
?>

<?php include "footer.php";
mon_footer();
?>
