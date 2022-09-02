$(function(){
  $(".match").on("click", function(){
    var account_id = ($)(this).data("id");
    console.log(account_id);
  })
})
