    <?php
      try
      {
        $bdd = new PDO('mysql:host=localhost;dbname=DATACS;charset=utf8', 'psaulay', '*****');
      }
      catch (Exception $e)
      {
        die('Erreur : ' . $e->getMessage());
      }

      $reponse = $bdd->prepare('SELECT * FROM Crypto WHERE cryptoType LIKE :question');
      $reponse->execute([
        'question' => "%".$_POST['question']."%"
      ]);
      $results = $reponse->fetchAll();
      
      $answer = '<ul>';
      foreach ($results as $result){
        if ($result['nom'] != 'zclassic' && $result['nom'] != 'zencash' && $result['nom'] != 'okcash' && $result['nom'] != 'storj'){
            $api_url = "https://api.coinmarketcap.com/v2/ticker/".$result['cmk'];
            $api_content = file_get_contents($api_url);
            $api_content_array = json_decode($api_content, true);
             
            //var_dump($api_content_array); die();
            $answer.= '<li><img class="logo" src="img/'.$result['code'].'.svg"><a target="_blank" href="'.$result['liens'].'">'.$result['nom'].'  ('.$result['code'].')<br>'.$api_content_array['data']['quotes']['USD']['price'].'$   |   '.$api_content_array['data']['quotes']['USD']['percent_change_7d'].'%</a></li>';
          }else{
            $api_url = "https://api.coinmarketcap.com/v1/ticker/".$result['nom'];
            $api_content = file_get_contents($api_url);
            $api_content_array = json_decode($api_content, true);
             
            //var_dump($api_content_array); die();
            $answer.= '<li><img class="logo" src="img/'.$result['code'].'.svg"><a target="_blank" href="'.$result['liens'].'">'.$result['nom'].'   ('.$result['code'].')<br>'.$api_content_array[0]['price_usd'].'$   |   '.$api_content_array[0]['percent_change_7d'].'%</a></li>';
          }}
          $answer .= '</ul>';
          echo $answer;
          ?>