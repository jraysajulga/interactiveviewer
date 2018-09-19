
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
        <div class="chart-header">
        </div>

        <div id="container">
            HELLO
        </div>
    </body>
</html>