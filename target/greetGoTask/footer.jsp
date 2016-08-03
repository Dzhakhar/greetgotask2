<footer>

</footer>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
<script>
  var school = function(){
  var table = $(".table");

  var messages = {
    error: ".alert-danger",
    success: ".alert-success"
  }
  
  function showMessage(msg){
    $(messages[msg]).show();
  }
  
  function addRow(data){
    var row = "<tr><td>" + data.name + "</td>" + "<td>" + data.surname + "</td>" + "<td>" + data.email + "</td></tr>";
    table.append(row);
    showMessage("success");
  }

  var ajaxActions = {
    add: function(data, ajaxContext){
//       possibility of change ajax's context
      var context = ajaxContext || {
        method: "POST",
        url: "/greetGoTask/api/add/",
        data: data,
        success: function(msg){
          if(msg){
            addRow(data);
            console.log(msg);
          }
        }
      };
      $.ajax(context)
    },
    remove: function(data, ajaxContext){
//       possibility of change ajax's context
      var context = ajaxContext || {
        method: "POST",
        url: "/greetGoTask/api/remove/",
        data: data,
        success: function(msg){
          
        }
      };
      $.ajax(context)
    }
  }
  
//   action should be "add" or "remove"
  function doAjaxQuery(action, data){
    ajaxActions[action](data);
  }
  
  $("#addStudent").submit(function(e){
      e.preventDefault();
      var obj = {};
      obj.name = $("#au_name").val();
      obj.surname = $("#au_surname").val();
      obj.email = $("#au_email").val();
      doAjaxQuery("add", obj);
      $("#au_name").val("");
      $("#au_surname").val("");
      $("#au_email").val("");
    });
  }

  school();
</script>