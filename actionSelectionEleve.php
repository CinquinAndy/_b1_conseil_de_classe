<?php
$postedEleve=filter_input(INPUT_POST,'idEleve');
if ($postedEleve==null){

} else{
    affichageInfo($postedEleve);
}
function affichageInfo($postedEleve){
require "config.php";
$bd = new PDO("mysql:host=" . Config::SERVEUR . ";dbname=" . Config::BASE, Config::UTILISATEUR, Config::MOTDEPASSE);

$request = $bd->prepare("select eleve_prof.id_prof AS epProf,eleve_prof.id_eleve AS epEleve,eleve.Nom, eleve.Prenom, p.Nom as NomProf,p.Prenom as PrenomProf,moyenne,appreciation,matiere from eleve join eleve_prof on id_eleve=id join prof p on eleve_prof.id_prof = p.id_prof where id=:id order by eleve.Nom,eleve.Prenom, NomProf ");
$request->bindParam(':id', $postedEleve);
$request->execute();
$lines = $request->fetchAll();

?>
<div class="mx-auto mt-3">
    <div class="table-responsive">
        <table class="table table-striped table-dark">
            <tr>
                <th class="text-light">Eleve</th>
                <th class="text-light">Prof</th>
                <th class="text-light">Note</th>
                <th class="text-light">Appreciation</th>
            </tr>
            <form action="saveInfos.php" method="post">

                <?php
                $i=0;
                foreach ($lines as $line) { ?>

                    <input type="hidden" name="nomEleve" value="<?php echo $line['epEleve'] ?>">
                    <input type="hidden" name="nomProf" value="<?php $line['epProf'] ?>">
                    <tr>
                        <td class="col-auto tableau">
                            <div class="text-light col-auto">
                                <div class="eleve"><?php echo $line['Nom'] ?> - <?php echo $line['Prenom'] ?></div>

                        </td>
                        <td class="col-auto tableau">
                            <div class="text-light col-auto">
                                <div class="prof"><?php echo $line['NomProf'] ?> - <?php echo $line['PrenomProf'] ?></div>
                                <br>
                                <div><?php echo $line['matiere'] ?></div>

                        </td>
                        <td class="col-auto tableau1">
                            <input class="form-control" id="moyenne<?php echo $i ?>" name="moyenne<?php echo $i ?>"
                                   value="<?php echo $line['moyenne'] ?>">

                        </td>
                        <td class="col-auto">
                                <textarea class="form-control" id="appreciation<?php echo $i ?>"
                                          name="appreciation<?php echo $i ?>"
                                          value="<?php echo $line['appreciation'] ?>"></textarea>

                        </td>
                    </tr>
                <?php
                $i++;
                } ?>
        </table>
        <table class="table bg-secondary row">
            <div class="d-flex justify-content-end">
                <button type="submit" name="Save" class="btn btn-primary">
                    Save
                </button>
            </div>
        </table>
        </form>
    </div>
    <?php
    }
    ?>
