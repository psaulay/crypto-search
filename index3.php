<?php
    try{
        $bdd = new PDO('mysql:host=localhost;dbname=DATACS;charset=utf8', 'psaulay', '*****');
    }
    catch (Exception $e){
        die('Erreur : ' . $e->getMessage());
    }

    $reponse = $bdd->prepare('SELECT * FROM Crypto WHERE nom LIKE :question OR code LIKE :question');
    // var_dump($_POST['question']); die();
    $reponse->execute(['question' => "%".$_POST['question']."%"]);
    $results = $reponse->fetchAll();
    $answer = '<ul>';
    foreach ($results as $result){
        $answer.= '<li><img class="logo" src="img/'.$result['code'].'.svg"><a target="_blank" href="'.$result['liens'].'">'.$result['nom'].'  ('.$result['code'].')</a></li>';
    }
    $answer .= '</ul>';
    echo $answer;
?>