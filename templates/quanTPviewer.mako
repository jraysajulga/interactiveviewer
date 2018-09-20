
<%
    default_title = "QuanTP"
    info = hda.name
    if hda.info:
        info += ' : ' + hda.info

    hdadict = trans.security.encode_dict_ids( hda.to_dict() )
%>


<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>${hda.name | h} | CRAVAT Viewer</title>
        ${h.js( 'libs/jquery/jquery',
                'libs/jquery/jquery-ui')}


    </head>
    <body>
    </body>
    <script type="text/javascript">
        $(function() {
            var ID = '${hdadict["id"]}';
            var xhr = jQuery.getJSON('/api/datasets/' + ID, {
                data_type : 'raw_data',
                provider  : 'base'
            });
            console.log(ID);

            xhr.done(function(response){
                console.log("DONE");
                var html = response.data;

                var prescripts = html.slice(
                    html.indexOf('<head>\n') + 1,
                    html.indexOf('</head>\n'));

                prescripts.pop();
                prescripts.shift();
                prescripts = prescripts.join('').split("").reverse().join("");

                $('head').html(prescripts);

                console.log(prescripts.slice(0,40));
            });
        });
    </script>
</html>