function search()
        {
            var question = document.getElementById("question").value;
            if (question.length > 0){
                $.ajax({
                url : 'index.php',
                type : 'POST' ,
                data : 'question=' + question ,
                success : function(data){
                  document.getElementById('result').innerHTML = data;
                } ,
                error : function(){alert('fail');},
            })
            }else{
              document.getElementById('result').innerHTML = '';
            }
        }

        function simpleSearch()
        {
            
            var simplequestion = document.getElementById("test").value;
            if (simplequestion.length > 0){
            //console.log(simplequestion);
            //alert(answer);
            $.ajax({
            url : 'index3.php', // La ressource ciblée
            type : 'POST' ,// Le type de la requête HTTP.
            data : 'question=' + simplequestion ,
            success : function(data){
              document.getElementById('result').innerHTML = data;
            },
            error : function(){alert('fail');},
        })
      }else{
          document.getElementById('result').innerHTML = '';
        }
        } 

        function test1()
        {
            var question = document.getElementById("cryptoType1").value;
            if (question.length > 0){
            $.ajax({
            url : 'index2.php',
            type : 'POST' ,
            data : 'question=' + question ,
            success : function(data){
              document.getElementById('result').innerHTML = data;
            } ,
            error : function(){alert('fail');},
        })
      }else{
          document.getElementById('result').innerHTML = '';
        }
        } 
        function test2()
        {
            var question = document.getElementById("cryptoType2").value;
            if (question.length > 0){
            $.ajax({
            url : 'index2.php',
            type : 'POST' ,//
            data : 'question=' + question ,
            success : function(data){
              document.getElementById('result').innerHTML = data;
            } ,
            error : function(){alert('fail');},
        })
      }else{
          document.getElementById('result').innerHTML = '';
        }
        } 
