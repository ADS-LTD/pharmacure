<script type="text/javascript">
    $(document).ready( function () {
       $('#data_source').DataTable( {
        
        language: {
        processing:     "Traitement en cours...",
        search:         "Rechercher&nbsp;:",
        lengthMenu:    "    _MENU_ Affichage  par page",
        info:           "Affichage de l'&eacute;lement _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
        infoEmpty:      "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
        infoFiltered:   "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
        infoPostFix:    "",
        loadingRecords: "Chargement en cours...",
        zeroRecords:    "Aucun &eacute;l&eacute;ment &agrave; afficher",
        emptyTable:     "Aucune donnée disponible dans le tableau",
        paginate: {
            first:      "Premier",
            previous:   "Pr&eacute;c&eacute;dent",
            next:       "Suivant",
            last:       "Dernier"
        },
        aria: {
            sortAscending:  ": activer pour trier la colonne par ordre croissant",
            sortDescending: ": activer pour trier la colonne par ordre décroissant"
        }
    },
    "serverSide": false, //Ne pas mettre sur true, cela break la pagination
        "ajax":"data",
         "columns": [
            { "data": "keyword" },
            { "data": "field" },
            { "data": "position" },
            { "data": "id" },
        ],
        scrollY: 400,
        "columnDefs": [
            {
                "targets": [ 3 ],
                "mRender": function (data, type, full) {
                if(full['Ordonnance'] == true){
                    return "Oui";
                }else return "non";
                }  
            },
            {
                "targets": [ 0 ],
                "visible": false,
            },
            {
                "targets": [ 4 ],
                "visible": false
            }
        ]
//        "Paginate":true, // Pagination True 
//        "PaginationType":"full_numbers", // And its type.
//         "iDisplayLength": 10
       
        } );
    } );

</script>
<div class="lower_content" style="font-size:13; top:20px">


<div class="table_header"><div class="menu_icon"></div><span class="table_title">Inventaires</span>
    <a onclick="refresh();return false;" href="#">
        <div class="refresh_icon_table" Onclick=""></div>
    </a>
</div>
    <table id="data_source">
         <thead>
            <tr>
                <th style="width:1px">keyword</th>
                <th>field</th>
				<th>position</th>
                <th>Produit</th>    
         </thead>
         <tbody>
        <tbody>
    </table>
</div>

<div  class="p_body js__p_body js__fadeout"></div>
    <div class="popup js__popup js__slide_top">
         <a href="#" class="p_close js__p_close" title="Fermer" onclick="MyPopupClose();return false;">
              <span></span><span></span>
            </a>
          <iframe id="IframePopUp" width="100%" height="100%" scrolling="yes" src=""></iframe>
    </div>