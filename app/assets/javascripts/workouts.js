$( document ).ready(function() {
   $('#workout_date').datepicker({
      format: "yyyy-mm-dd",
      todayBtn: "linked",
      autoclose: true,
      todayHighlight: true
  });
});