<%
    default_title = "QuanTP"
    info = hda.name
    if hda.info:
        info += ' : ' + hda.info
    root            = h.url_for( "/static/" )

    data =  hda.datatype.dataprovider(hda, 'base')
    app_root        = root + "plugins/visualizations/quanTP/static"
    app_root = "static/js"
    hdadict = trans.security.encode_dict_ids( hda.to_dict() )
%>

<!DOCTYPE HTML>
<html>
        %  for i, row in enumerate(data):
            % if i != -1:
                ${row}
            % endif
        % endfor
</html>