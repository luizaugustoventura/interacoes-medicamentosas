function Info(ddl) {
    var IdMed = $("#" + ddl).val();
    window.location = '@Url.Action("Details","Medicamentos")/' + IdMed;
}