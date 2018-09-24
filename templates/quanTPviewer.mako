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
    import re
    re_img = re.compile(r"<img .*?>")
%>

<!DOCTYPE HTML>
<html>
        %  for i, row in enumerate(data):
            % if 'script src' in row or 'link href' in row:
                ${row.replace('Box_TE_all_rep_files', 'static/js')}
            % else:
                ${re_img.sub("",row).replace('<!--', '').replace('-->','')}
            % endif
        % endfor
</html>