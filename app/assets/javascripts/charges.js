$(function() {
  $("#chargeables").on("change", function() {
  	$("#charge_c_type").val($("#chargeables option:selected").attr("data-option-type"));
  	$("#charge_c_id").val($(this).val());
  });
});