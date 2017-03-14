$(document).ready(function () {
    $("#class").val(getParameterByName("class"));
    $("#teacher").val(getParameterByName("teacher"));
    $("#begin").val(getParameterByName("begin"));
    $("#end").val(getParameterByName("end"));
    $("#begin").datepicker({
              changeMonth: true,
              changeYear: true,
              yearRange: "-100:+0",
          });
    $("#end").datepicker({
              changeMonth: true,
              changeYear: true,
              yearRange: "-100:+0",
          });
})