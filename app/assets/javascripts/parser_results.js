$(function() {
  $(document).on("ajax:success", function(event) {
    var response = event.detail[0];
    $("#results").html(response);
  });

  $(document).on("ajax:error", function() {
    alert("Invalid pdf");
  });
});
