$( document ).ready(function() {
   $('#workout_date').datepicker({
      format: "yyyy-mm-dd",
      todayBtn: "linked",
      autoclose: true,
      todayHighlight: true
   });
  
  
   // sortable workout form
   $('#exercises').sortable(
     {
      items: "div.form-inline.exercise-record.nested-fields.well"
     }
   );
   
   $('.sets').sortable(
      {
         items: "div.form-inline.nested-fields.set"
      }
   );
   
   //after exercise insert
   $('#exercises').bind('cocoon:after-insert', function(e,insertedItem){
      insertedItem.find('.sets').sortable(
         {
            items: "div.form-inline.nested-fields.set"
         }
      );
   });
});