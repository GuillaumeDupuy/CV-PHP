<?php include("inc/header.inc.php"); ?>
<?php require_once("inc/data.inc.php"); ?>

<?php
//***************************************** */
//Modification Base de données
//***************************************** */
//if (!empty($_POST)) {

    $pdo = new PDO("mysql:host=localhost;dbname=eval_site", "root", "", array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
    //******************************************* */
    // Insertion
    $result = $pdo->exec("INSERT INTO eval_site (emploi, entreprise, description, date_embauche, date_fin) VALUES ('paysan', 'mon oncle', 'conduire tracteur, traire les vaches', '2016-02-15', '2019-06-26');");
    echo $result . ' donnée(s) affectée(s) par la requête INSERT<br>';
    //******************************************* */

    //******************************************* */
    // Modification
    //$result = $pdo->exec("UPDATE employes SET salaire = salaire + 1000 WHERE prenom='Quentin'");
    //echo $result . ' donnée(s) affectée(s) par la requête UPDATE<br>';
    //******************************************* */

    //******************************************* */
    // Suppresion
    //$result = $pdo->exec("DELETE FROM employes WHERE prenom = 'Quentin'");
    //echo $result . ' donnée(s) affectée(s) par la requête DELETE<br>';
    //******************************************* */

//}

?>

<div class="starter-template">
    <form method="POST" action="" enctype='multipart/form-data'>

        <div class="resume-item d-flex flex-column  ">
            <label for="contenu">Contenu de l'expérience</label>
            <textarea rows="2" class="form-control" id="contenu" name="contenu"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Enregistrer</button>

    </form>
</div>