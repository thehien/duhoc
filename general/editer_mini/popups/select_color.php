<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<title>openWYSIWYG | Select Color</title>
</head>
<script language="JavaScript" type="text/javascript">

var qsParm = new Array();


/* ---------------------------------------------------------------------- *\
  Function    : retrieveWYSIWYG()
  Description : Retrieves the textarea ID for which the color will be inserted into.
\* ---------------------------------------------------------------------- */
function retreiveColor() {
  var query = window.location.search.substring(1);
  var parms = query.split('&');
  for (var i=0; i<parms.length; i++) {
    var pos = parms[i].indexOf('=');
    if (pos > 0) {
       var key = parms[i].substring(0,pos);
       var val = parms[i].substring(pos+1);
       qsParm[key] = val;
    }
  }
  document.getElementById('enterColor').value = "#" + (qsParm['color']);
}


/* ---------------------------------------------------------------------- *\
  Function    : selectColor()
  Description : Selects the color and inserts it into the WYSIWYG
\* ---------------------------------------------------------------------- */
function selectColor(color) {
	window.opener.document.getElementById('wysiwyg' + qsParm['wysiwyg']).contentWindow.document.execCommand(qsParm['command'], false, color);
  window.close();
}


/* ---------------------------------------------------------------------- *\
  Function    : previewColor()
  Description : Updates the preview pane as the user mouses over different colors
\* ---------------------------------------------------------------------- */
function previewColor(color) {
  document.getElementById('enterColor').value = color;
	document.getElementById('PreviewColor').style.backgroundColor = color;
}
</script>
<body bgcolor="#EEEEEE" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" onLoad="retreiveColor();">
<center>
<table border="0" cellspacing="0" cellpadding="4" width="100%">

 <tr><form onSubmit="selectColor(document.getElementById('enterColor').value);">
  <td valign=center><div style="background-color: #000000; padding: 1; height: 21px; width: 50px"><div id="PreviewColor" style="height: 100%; width: 100%"></div></div></td>
  <td valign=center><input type="text" size="15" id="enterColor" name="enterColor" id="enterColor"></td>
  <td width="100%"></td>
 </tr></form>
</table>

<table border=0 cellspacing=1 cellpadding=0 bgcolor="#000000" style="cursor: hand;" >
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#003300" onMouseOver="previewColor('#003300')" onClick="selectColor('#003300')" height="10" width="10"></td>
  <td bgcolor="#006600" onMouseOver="previewColor('#006600')" onClick="selectColor('#006600')" height="10" width="10"></td>
  <td bgcolor="#009900" onMouseOver="previewColor('#009900')" onClick="selectColor('#009900')" height="10" width="10"></td>
  <td bgcolor="#00CC00" onMouseOver="previewColor('#00CC00')" onClick="selectColor('#00CC00')" height="10" width="10"></td>
  <td bgcolor="#00FF00" onMouseOver="previewColor('#00FF00')" onClick="selectColor('#00FF00')" height="10" width="10"></td>
  <td bgcolor="#330000" onMouseOver="previewColor('#330000')" onClick="selectColor('#330000')" height="10" width="10"></td>
  <td bgcolor="#333300" onMouseOver="previewColor('#333300')" onClick="selectColor('#333300')" height="10" width="10"></td>
  <td bgcolor="#336600" onMouseOver="previewColor('#336600')" onClick="selectColor('#336600')" height="10" width="10"></td>
  <td bgcolor="#339900" onMouseOver="previewColor('#339900')" onClick="selectColor('#339900')" height="10" width="10"></td>
  <td bgcolor="#33CC00" onMouseOver="previewColor('#33CC00')" onClick="selectColor('#33CC00')" height="10" width="10"></td>
  <td bgcolor="#33FF00" onMouseOver="previewColor('#33FF00')" onClick="selectColor('#33FF00')" height="10" width="10"></td>
  <td bgcolor="#660000" onMouseOver="previewColor('#660000')" onClick="selectColor('#660000')" height="10" width="10"></td>
  <td bgcolor="#663300" onMouseOver="previewColor('#663300')" onClick="selectColor('#663300')" height="10" width="10"></td>
  <td bgcolor="#666600" onMouseOver="previewColor('#666600')" onClick="selectColor('#666600')" height="10" width="10"></td>
  <td bgcolor="#669900" onMouseOver="previewColor('#669900')" onClick="selectColor('#669900')" height="10" width="10"></td>
  <td bgcolor="#66CC00" onMouseOver="previewColor('#66CC00')" onClick="selectColor('#66CC00')" height="10" width="10"></td>
  <td bgcolor="#66FF00" onMouseOver="previewColor('#66FF00')" onClick="selectColor('#66FF00')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#333333" onMouseOver="previewColor('#333333')" onClick="selectColor('#333333')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000033" onMouseOver="previewColor('#000033')" onClick="selectColor('#000033')" height="10" width="10"></td>
  <td bgcolor="#003333" onMouseOver="previewColor('#003333')" onClick="selectColor('#003333')" height="10" width="10"></td>
  <td bgcolor="#006633" onMouseOver="previewColor('#006633')" onClick="selectColor('#006633')" height="10" width="10"></td>
  <td bgcolor="#009933" onMouseOver="previewColor('#009933')" onClick="selectColor('#009933')" height="10" width="10"></td>
  <td bgcolor="#00CC33" onMouseOver="previewColor('#00CC33')" onClick="selectColor('#00CC33')" height="10" width="10"></td>
  <td bgcolor="#00FF33" onMouseOver="previewColor('#00FF33')" onClick="selectColor('#00FF33')" height="10" width="10"></td>
  <td bgcolor="#330033" onMouseOver="previewColor('#330033')" onClick="selectColor('#330033')" height="10" width="10"></td>
  <td bgcolor="#333333" onMouseOver="previewColor('#333333')" onClick="selectColor('#333333')" height="10" width="10"></td>
  <td bgcolor="#336633" onMouseOver="previewColor('#336633')" onClick="selectColor('#336633')" height="10" width="10"></td>
  <td bgcolor="#339933" onMouseOver="previewColor('#339933')" onClick="selectColor('#339933')" height="10" width="10"></td>
  <td bgcolor="#33CC33" onMouseOver="previewColor('#33CC33')" onClick="selectColor('#33CC33')" height="10" width="10"></td>
  <td bgcolor="#33FF33" onMouseOver="previewColor('#33FF33')" onClick="selectColor('#33FF33')" height="10" width="10"></td>
  <td bgcolor="#660033" onMouseOver="previewColor('#660033')" onClick="selectColor('#660033')" height="10" width="10"></td>
  <td bgcolor="#663333" onMouseOver="previewColor('#663333')" onClick="selectColor('#663333')" height="10" width="10"></td>
  <td bgcolor="#666633" onMouseOver="previewColor('#666633')" onClick="selectColor('#666633')" height="10" width="10"></td>
  <td bgcolor="#669933" onMouseOver="previewColor('#669933')" onClick="selectColor('#669933')" height="10" width="10"></td>
  <td bgcolor="#66CC33" onMouseOver="previewColor('#66CC33')" onClick="selectColor('#66CC33')" height="10" width="10"></td>
  <td bgcolor="#66FF33" onMouseOver="previewColor('#66FF33')" onClick="selectColor('#66FF33')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#666666" onMouseOver="previewColor('#666666')" onClick="selectColor('#666666')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000066" onMouseOver="previewColor('#000066')" onClick="selectColor('#000066')" height="10" width="10"></td>
  <td bgcolor="#003366" onMouseOver="previewColor('#003366')" onClick="selectColor('#003366')" height="10" width="10"></td>
  <td bgcolor="#006666" onMouseOver="previewColor('#006666')" onClick="selectColor('#006666')" height="10" width="10"></td>
  <td bgcolor="#009966" onMouseOver="previewColor('#009966')" onClick="selectColor('#009966')" height="10" width="10"></td>
  <td bgcolor="#00CC66" onMouseOver="previewColor('#00CC66')" onClick="selectColor('#00CC66')" height="10" width="10"></td>
  <td bgcolor="#00FF66" onMouseOver="previewColor('#00FF66')" onClick="selectColor('#00FF66')" height="10" width="10"></td>
  <td bgcolor="#330066" onMouseOver="previewColor('#330066')" onClick="selectColor('#330066')" height="10" width="10"></td>
  <td bgcolor="#333366" onMouseOver="previewColor('#333366')" onClick="selectColor('#333366')" height="10" width="10"></td>
  <td bgcolor="#336666" onMouseOver="previewColor('#336666')" onClick="selectColor('#336666')" height="10" width="10"></td>
  <td bgcolor="#339966" onMouseOver="previewColor('#339966')" onClick="selectColor('#339966')" height="10" width="10"></td>
  <td bgcolor="#33CC66" onMouseOver="previewColor('#33CC66')" onClick="selectColor('#33CC66')" height="10" width="10"></td>
  <td bgcolor="#33FF66" onMouseOver="previewColor('#33FF66')" onClick="selectColor('#33FF66')" height="10" width="10"></td>
  <td bgcolor="#660066" onMouseOver="previewColor('#660066')" onClick="selectColor('#660066')" height="10" width="10"></td>
  <td bgcolor="#663366" onMouseOver="previewColor('#663366')" onClick="selectColor('#663366')" height="10" width="10"></td>
  <td bgcolor="#666666" onMouseOver="previewColor('#666666')" onClick="selectColor('#666666')" height="10" width="10"></td>
  <td bgcolor="#669966" onMouseOver="previewColor('#669966')" onClick="selectColor('#669966')" height="10" width="10"></td>
  <td bgcolor="#66CC66" onMouseOver="previewColor('#66CC66')" onClick="selectColor('#66CC66')" height="10" width="10"></td>
  <td bgcolor="#66FF66" onMouseOver="previewColor('#66FF66')" onClick="selectColor('#66FF66')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#999999" onMouseOver="previewColor('#999999')" onClick="selectColor('#999999')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#000099" onMouseOver="previewColor('#000099')" onClick="selectColor('#000099')" height="10" width="10"></td>
  <td bgcolor="#003399" onMouseOver="previewColor('#003399')" onClick="selectColor('#003399')" height="10" width="10"></td>
  <td bgcolor="#006699" onMouseOver="previewColor('#006699')" onClick="selectColor('#006699')" height="10" width="10"></td>
  <td bgcolor="#009999" onMouseOver="previewColor('#009999')" onClick="selectColor('#009999')" height="10" width="10"></td>
  <td bgcolor="#00CC99" onMouseOver="previewColor('#00CC99')" onClick="selectColor('#00CC99')" height="10" width="10"></td>
  <td bgcolor="#00FF99" onMouseOver="previewColor('#00FF99')" onClick="selectColor('#00FF99')" height="10" width="10"></td>
  <td bgcolor="#330099" onMouseOver="previewColor('#330099')" onClick="selectColor('#330099')" height="10" width="10"></td>
  <td bgcolor="#333399" onMouseOver="previewColor('#333399')" onClick="selectColor('#333399')" height="10" width="10"></td>
  <td bgcolor="#336699" onMouseOver="previewColor('#336699')" onClick="selectColor('#336699')" height="10" width="10"></td>
  <td bgcolor="#339999" onMouseOver="previewColor('#339999')" onClick="selectColor('#339999')" height="10" width="10"></td>
  <td bgcolor="#33CC99" onMouseOver="previewColor('#33CC99')" onClick="selectColor('#33CC99')" height="10" width="10"></td>
  <td bgcolor="#33FF99" onMouseOver="previewColor('#33FF99')" onClick="selectColor('#33FF99')" height="10" width="10"></td>
  <td bgcolor="#660099" onMouseOver="previewColor('#660099')" onClick="selectColor('#660099')" height="10" width="10"></td>
  <td bgcolor="#663399" onMouseOver="previewColor('#663399')" onClick="selectColor('#663399')" height="10" width="10"></td>
  <td bgcolor="#666699" onMouseOver="previewColor('#666699')" onClick="selectColor('#666699')" height="10" width="10"></td>
  <td bgcolor="#669999" onMouseOver="previewColor('#669999')" onClick="selectColor('#669999')" height="10" width="10"></td>
  <td bgcolor="#66CC99" onMouseOver="previewColor('#66CC99')" onClick="selectColor('#66CC99')" height="10" width="10"></td>
  <td bgcolor="#66FF99" onMouseOver="previewColor('#66FF99')" onClick="selectColor('#66FF99')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#CCCCCC" onMouseOver="previewColor('#CCCCCC')" onClick="selectColor('#CCCCCC')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#0000CC" onMouseOver="previewColor('#0000CC')" onClick="selectColor('#0000CC')" height="10" width="10"></td>
  <td bgcolor="#0033CC" onMouseOver="previewColor('#0033CC')" onClick="selectColor('#0033CC')" height="10" width="10"></td>
  <td bgcolor="#0066CC" onMouseOver="previewColor('#0066CC')" onClick="selectColor('#0066CC')" height="10" width="10"></td>
  <td bgcolor="#0099CC" onMouseOver="previewColor('#0099CC')" onClick="selectColor('#0099CC')" height="10" width="10"></td>
  <td bgcolor="#00CCCC" onMouseOver="previewColor('#00CCCC')" onClick="selectColor('#00CCCC')" height="10" width="10"></td>
  <td bgcolor="#00FFCC" onMouseOver="previewColor('#00FFCC')" onClick="selectColor('#00FFCC')" height="10" width="10"></td>
  <td bgcolor="#3300CC" onMouseOver="previewColor('#3300CC')" onClick="selectColor('#3300CC')" height="10" width="10"></td>
  <td bgcolor="#3333CC" onMouseOver="previewColor('#3333CC')" onClick="selectColor('#3333CC')" height="10" width="10"></td>
  <td bgcolor="#3366CC" onMouseOver="previewColor('#3366CC')" onClick="selectColor('#3366CC')" height="10" width="10"></td>
  <td bgcolor="#3399CC" onMouseOver="previewColor('#3399CC')" onClick="selectColor('#3399CC')" height="10" width="10"></td>
  <td bgcolor="#33CCCC" onMouseOver="previewColor('#33CCCC')" onClick="selectColor('#33CCCC')" height="10" width="10"></td>
  <td bgcolor="#33FFCC" onMouseOver="previewColor('#33FFCC')" onClick="selectColor('#33FFCC')" height="10" width="10"></td>
  <td bgcolor="#6600CC" onMouseOver="previewColor('#6600CC')" onClick="selectColor('#6600CC')" height="10" width="10"></td>
  <td bgcolor="#6633CC" onMouseOver="previewColor('#6633CC')" onClick="selectColor('#6633CC')" height="10" width="10"></td>
  <td bgcolor="#6666CC" onMouseOver="previewColor('#6666CC')" onClick="selectColor('#6666CC')" height="10" width="10"></td>
  <td bgcolor="#6699CC" onMouseOver="previewColor('#6699CC')" onClick="selectColor('#6699CC')" height="10" width="10"></td>
  <td bgcolor="#66CCCC" onMouseOver="previewColor('#66CCCC')" onClick="selectColor('#66CCCC')" height="10" width="10"></td>
  <td bgcolor="#66FFCC" onMouseOver="previewColor('#66FFCC')" onClick="selectColor('#66FFCC')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#FFFFFF" onMouseOver="previewColor('#FFFFFF')" onClick="selectColor('#FFFFFF')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#0000FF" onMouseOver="previewColor('#0000FF')" onClick="selectColor('#0000FF')" height="10" width="10"></td>
  <td bgcolor="#0033FF" onMouseOver="previewColor('#0033FF')" onClick="selectColor('#0033FF')" height="10" width="10"></td>
  <td bgcolor="#0066FF" onMouseOver="previewColor('#0066FF')" onClick="selectColor('#0066FF')" height="10" width="10"></td>
  <td bgcolor="#0099FF" onMouseOver="previewColor('#0099FF')" onClick="selectColor('#0099FF')" height="10" width="10"></td>
  <td bgcolor="#00CCFF" onMouseOver="previewColor('#00CCFF')" onClick="selectColor('#00CCFF')" height="10" width="10"></td>
  <td bgcolor="#00FFFF" onMouseOver="previewColor('#00FFFF')" onClick="selectColor('#00FFFF')" height="10" width="10"></td>
  <td bgcolor="#3300FF" onMouseOver="previewColor('#3300FF')" onClick="selectColor('#3300FF')" height="10" width="10"></td>
  <td bgcolor="#3333FF" onMouseOver="previewColor('#3333FF')" onClick="selectColor('#3333FF')" height="10" width="10"></td>
  <td bgcolor="#3366FF" onMouseOver="previewColor('#3366FF')" onClick="selectColor('#3366FF')" height="10" width="10"></td>
  <td bgcolor="#3399FF" onMouseOver="previewColor('#3399FF')" onClick="selectColor('#3399FF')" height="10" width="10"></td>
  <td bgcolor="#33CCFF" onMouseOver="previewColor('#33CCFF')" onClick="selectColor('#33CCFF')" height="10" width="10"></td>
  <td bgcolor="#33FFFF" onMouseOver="previewColor('#33FFFF')" onClick="selectColor('#33FFFF')" height="10" width="10"></td>
  <td bgcolor="#6600FF" onMouseOver="previewColor('#6600FF')" onClick="selectColor('#6600FF')" height="10" width="10"></td>
  <td bgcolor="#6633FF" onMouseOver="previewColor('#6633FF')" onClick="selectColor('#6633FF')" height="10" width="10"></td>
  <td bgcolor="#6666FF" onMouseOver="previewColor('#6666FF')" onClick="selectColor('#6666FF')" height="10" width="10"></td>
  <td bgcolor="#6699FF" onMouseOver="previewColor('#6699FF')" onClick="selectColor('#6699FF')" height="10" width="10"></td>
  <td bgcolor="#66CCFF" onMouseOver="previewColor('#66CCFF')" onClick="selectColor('#66CCFF')" height="10" width="10"></td>
  <td bgcolor="#66FFFF" onMouseOver="previewColor('#66FFFF')" onClick="selectColor('#66FFFF')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#FF0000" onMouseOver="previewColor('#FF0000')" onClick="selectColor('#FF0000')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#990000" onMouseOver="previewColor('#990000')" onClick="selectColor('#990000')" height="10" width="10"></td>
  <td bgcolor="#993300" onMouseOver="previewColor('#993300')" onClick="selectColor('#993300')" height="10" width="10"></td>
  <td bgcolor="#996600" onMouseOver="previewColor('#996600')" onClick="selectColor('#996600')" height="10" width="10"></td>
  <td bgcolor="#999900" onMouseOver="previewColor('#999900')" onClick="selectColor('#999900')" height="10" width="10"></td>
  <td bgcolor="#99CC00" onMouseOver="previewColor('#99CC00')" onClick="selectColor('#99CC00')" height="10" width="10"></td>
  <td bgcolor="#99FF00" onMouseOver="previewColor('#99FF00')" onClick="selectColor('#99FF00')" height="10" width="10"></td>
  <td bgcolor="#CC0000" onMouseOver="previewColor('#CC0000')" onClick="selectColor('#CC0000')" height="10" width="10"></td>
  <td bgcolor="#CC3300" onMouseOver="previewColor('#CC3300')" onClick="selectColor('#CC3300')" height="10" width="10"></td>
  <td bgcolor="#CC6600" onMouseOver="previewColor('#CC6600')" onClick="selectColor('#CC6600')" height="10" width="10"></td>
  <td bgcolor="#CC9900" onMouseOver="previewColor('#CC9900')" onClick="selectColor('#CC9900')" height="10" width="10"></td>
  <td bgcolor="#CCCC00" onMouseOver="previewColor('#CCCC00')" onClick="selectColor('#CCCC00')" height="10" width="10"></td>
  <td bgcolor="#CCFF00" onMouseOver="previewColor('#CCFF00')" onClick="selectColor('#CCFF00')" height="10" width="10"></td>
  <td bgcolor="#FF0000" onMouseOver="previewColor('#FF0000')" onClick="selectColor('#FF0000')" height="10" width="10"></td>
  <td bgcolor="#FF3300" onMouseOver="previewColor('#FF3300')" onClick="selectColor('#FF3300')" height="10" width="10"></td>
  <td bgcolor="#FF6600" onMouseOver="previewColor('#FF6600')" onClick="selectColor('#FF6600')" height="10" width="10"></td>
  <td bgcolor="#FF9900" onMouseOver="previewColor('#FF9900')" onClick="selectColor('#FF9900')" height="10" width="10"></td>
  <td bgcolor="#FFCC00" onMouseOver="previewColor('#FFCC00')" onClick="selectColor('#FFCC00')" height="10" width="10"></td>
  <td bgcolor="#FFFF00" onMouseOver="previewColor('#FFFF00')" onClick="selectColor('#FFFF00')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#00FF00" onMouseOver="previewColor('#00FF00')" onClick="selectColor('#00FF00')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#990033" onMouseOver="previewColor('#990033')" onClick="selectColor('#990033')" height="10" width="10"></td>
  <td bgcolor="#993333" onMouseOver="previewColor('#993333')" onClick="selectColor('#993333')" height="10" width="10"></td>
  <td bgcolor="#996633" onMouseOver="previewColor('#996633')" onClick="selectColor('#996633')" height="10" width="10"></td>
  <td bgcolor="#999933" onMouseOver="previewColor('#999933')" onClick="selectColor('#999933')" height="10" width="10"></td>
  <td bgcolor="#99CC33" onMouseOver="previewColor('#99CC33')" onClick="selectColor('#99CC33')" height="10" width="10"></td>
  <td bgcolor="#99FF33" onMouseOver="previewColor('#99FF33')" onClick="selectColor('#99FF33')" height="10" width="10"></td>
  <td bgcolor="#CC0033" onMouseOver="previewColor('#CC0033')" onClick="selectColor('#CC0033')" height="10" width="10"></td>
  <td bgcolor="#CC3333" onMouseOver="previewColor('#CC3333')" onClick="selectColor('#CC3333')" height="10" width="10"></td>
  <td bgcolor="#CC6633" onMouseOver="previewColor('#CC6633')" onClick="selectColor('#CC6633')" height="10" width="10"></td>
  <td bgcolor="#CC9933" onMouseOver="previewColor('#CC9933')" onClick="selectColor('#CC9933')" height="10" width="10"></td>
  <td bgcolor="#CCCC33" onMouseOver="previewColor('#CCCC33')" onClick="selectColor('#CCCC33')" height="10" width="10"></td>
  <td bgcolor="#CCFF33" onMouseOver="previewColor('#CCFF33')" onClick="selectColor('#CCFF33')" height="10" width="10"></td>
  <td bgcolor="#FF0033" onMouseOver="previewColor('#FF0033')" onClick="selectColor('#FF0033')" height="10" width="10"></td>
  <td bgcolor="#FF3333" onMouseOver="previewColor('#FF3333')" onClick="selectColor('#FF3333')" height="10" width="10"></td>
  <td bgcolor="#FF6633" onMouseOver="previewColor('#FF6633')" onClick="selectColor('#FF6633')" height="10" width="10"></td>
  <td bgcolor="#FF9933" onMouseOver="previewColor('#FF9933')" onClick="selectColor('#FF9933')" height="10" width="10"></td>
  <td bgcolor="#FFCC33" onMouseOver="previewColor('#FFCC33')" onClick="selectColor('#FFCC33')" height="10" width="10"></td>
  <td bgcolor="#FFFF33" onMouseOver="previewColor('#FFFF33')" onClick="selectColor('#FFFF33')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#0000FF" onMouseOver="previewColor('#0000FF')" onClick="selectColor('#0000FF')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#990066" onMouseOver="previewColor('#990066')" onClick="selectColor('#990066')" height="10" width="10"></td>
  <td bgcolor="#993366" onMouseOver="previewColor('#993366')" onClick="selectColor('#993366')" height="10" width="10"></td>
  <td bgcolor="#996666" onMouseOver="previewColor('#996666')" onClick="selectColor('#996666')" height="10" width="10"></td>
  <td bgcolor="#999966" onMouseOver="previewColor('#999966')" onClick="selectColor('#999966')" height="10" width="10"></td>
  <td bgcolor="#99CC66" onMouseOver="previewColor('#99CC66')" onClick="selectColor('#99CC66')" height="10" width="10"></td>
  <td bgcolor="#99FF66" onMouseOver="previewColor('#99FF66')" onClick="selectColor('#99FF66')" height="10" width="10"></td>
  <td bgcolor="#CC0066" onMouseOver="previewColor('#CC0066')" onClick="selectColor('#CC0066')" height="10" width="10"></td>
  <td bgcolor="#CC3366" onMouseOver="previewColor('#CC3366')" onClick="selectColor('#CC3366')" height="10" width="10"></td>
  <td bgcolor="#CC6666" onMouseOver="previewColor('#CC6666')" onClick="selectColor('#CC6666')" height="10" width="10"></td>
  <td bgcolor="#CC9966" onMouseOver="previewColor('#CC9966')" onClick="selectColor('#CC9966')" height="10" width="10"></td>
  <td bgcolor="#CCCC66" onMouseOver="previewColor('#CCCC66')" onClick="selectColor('#CCCC66')" height="10" width="10"></td>
  <td bgcolor="#CCFF66" onMouseOver="previewColor('#CCFF66')" onClick="selectColor('#CCFF66')" height="10" width="10"></td>
  <td bgcolor="#FF0066" onMouseOver="previewColor('#FF0066')" onClick="selectColor('#FF0066')" height="10" width="10"></td>
  <td bgcolor="#FF3366" onMouseOver="previewColor('#FF3366')" onClick="selectColor('#FF3366')" height="10" width="10"></td>
  <td bgcolor="#FF6666" onMouseOver="previewColor('#FF6666')" onClick="selectColor('#FF6666')" height="10" width="10"></td>
  <td bgcolor="#FF9966" onMouseOver="previewColor('#FF9966')" onClick="selectColor('#FF9966')" height="10" width="10"></td>
  <td bgcolor="#FFCC66" onMouseOver="previewColor('#FFCC66')" onClick="selectColor('#FFCC66')" height="10" width="10"></td>
  <td bgcolor="#FFFF66" onMouseOver="previewColor('#FFFF66')" onClick="selectColor('#FFFF66')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#FFFF00" onMouseOver="previewColor('#FFFF00')" onClick="selectColor('#FFFF00')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#990099" onMouseOver="previewColor('#990099')" onClick="selectColor('#990099')" height="10" width="10"></td>
  <td bgcolor="#993399" onMouseOver="previewColor('#993399')" onClick="selectColor('#993399')" height="10" width="10"></td>
  <td bgcolor="#996699" onMouseOver="previewColor('#996699')" onClick="selectColor('#996699')" height="10" width="10"></td>
  <td bgcolor="#999999" onMouseOver="previewColor('#999999')" onClick="selectColor('#999999')" height="10" width="10"></td>
  <td bgcolor="#99CC99" onMouseOver="previewColor('#99CC99')" onClick="selectColor('#99CC99')" height="10" width="10"></td>
  <td bgcolor="#99FF99" onMouseOver="previewColor('#99FF99')" onClick="selectColor('#99FF99')" height="10" width="10"></td>
  <td bgcolor="#CC0099" onMouseOver="previewColor('#CC0099')" onClick="selectColor('#CC0099')" height="10" width="10"></td>
  <td bgcolor="#CC3399" onMouseOver="previewColor('#CC3399')" onClick="selectColor('#CC3399')" height="10" width="10"></td>
  <td bgcolor="#CC6699" onMouseOver="previewColor('#CC6699')" onClick="selectColor('#CC6699')" height="10" width="10"></td>
  <td bgcolor="#CC9999" onMouseOver="previewColor('#CC9999')" onClick="selectColor('#CC9999')" height="10" width="10"></td>
  <td bgcolor="#CCCC99" onMouseOver="previewColor('#CCCC99')" onClick="selectColor('#CCCC99')" height="10" width="10"></td>
  <td bgcolor="#CCFF99" onMouseOver="previewColor('#CCFF99')" onClick="selectColor('#CCFF99')" height="10" width="10"></td>
  <td bgcolor="#FF0099" onMouseOver="previewColor('#FF0099')" onClick="selectColor('#FF0099')" height="10" width="10"></td>
  <td bgcolor="#FF3399" onMouseOver="previewColor('#FF3399')" onClick="selectColor('#FF3399')" height="10" width="10"></td>
  <td bgcolor="#FF6699" onMouseOver="previewColor('#FF6699')" onClick="selectColor('#FF6699')" height="10" width="10"></td>
  <td bgcolor="#FF9999" onMouseOver="previewColor('#FF9999')" onClick="selectColor('#FF9999')" height="10" width="10"></td>
  <td bgcolor="#FFCC99" onMouseOver="previewColor('#FFCC99')" onClick="selectColor('#FFCC99')" height="10" width="10"></td>
  <td bgcolor="#FFFF99" onMouseOver="previewColor('#FFFF99')" onClick="selectColor('#FFFF99')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#00FFFF" onMouseOver="previewColor('#00FFFF')" onClick="selectColor('#00FFFF')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#9900CC" onMouseOver="previewColor('#9900CC')" onClick="selectColor('#9900CC')" height="10" width="10"></td>
  <td bgcolor="#9933CC" onMouseOver="previewColor('#9933CC')" onClick="selectColor('#9933CC')" height="10" width="10"></td>
  <td bgcolor="#9966CC" onMouseOver="previewColor('#9966CC')" onClick="selectColor('#9966CC')" height="10" width="10"></td>
  <td bgcolor="#9999CC" onMouseOver="previewColor('#9999CC')" onClick="selectColor('#9999CC')" height="10" width="10"></td>
  <td bgcolor="#99CCCC" onMouseOver="previewColor('#99CCCC')" onClick="selectColor('#99CCCC')" height="10" width="10"></td>
  <td bgcolor="#99FFCC" onMouseOver="previewColor('#99FFCC')" onClick="selectColor('#99FFCC')" height="10" width="10"></td>
  <td bgcolor="#CC00CC" onMouseOver="previewColor('#CC00CC')" onClick="selectColor('#CC00CC')" height="10" width="10"></td>
  <td bgcolor="#CC33CC" onMouseOver="previewColor('#CC33CC')" onClick="selectColor('#CC33CC')" height="10" width="10"></td>
  <td bgcolor="#CC66CC" onMouseOver="previewColor('#CC66CC')" onClick="selectColor('#CC66CC')" height="10" width="10"></td>
  <td bgcolor="#CC99CC" onMouseOver="previewColor('#CC99CC')" onClick="selectColor('#CC99CC')" height="10" width="10"></td>
  <td bgcolor="#CCCCCC" onMouseOver="previewColor('#CCCCCC')" onClick="selectColor('#CCCCCC')" height="10" width="10"></td>
  <td bgcolor="#CCFFCC" onMouseOver="previewColor('#CCFFCC')" onClick="selectColor('#CCFFCC')" height="10" width="10"></td>
  <td bgcolor="#FF00CC" onMouseOver="previewColor('#FF00CC')" onClick="selectColor('#FF00CC')" height="10" width="10"></td>
  <td bgcolor="#FF33CC" onMouseOver="previewColor('#FF33CC')" onClick="selectColor('#FF33CC')" height="10" width="10"></td>
  <td bgcolor="#FF66CC" onMouseOver="previewColor('#FF66CC')" onClick="selectColor('#FF66CC')" height="10" width="10"></td>
  <td bgcolor="#FF99CC" onMouseOver="previewColor('#FF99CC')" onClick="selectColor('#FF99CC')" height="10" width="10"></td>
  <td bgcolor="#FFCCCC" onMouseOver="previewColor('#FFCCCC')" onClick="selectColor('#FFCCCC')" height="10" width="10"></td>
  <td bgcolor="#FFFFCC" onMouseOver="previewColor('#FFFFCC')" onClick="selectColor('#FFFFCC')" height="10" width="10"></td>
 </tr>
 <tr>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#FF00FF" onMouseOver="previewColor('#FF00FF')" onClick="selectColor('#FF00FF')" height="10" width="10"></td>
  <td bgcolor="#000000" onMouseOver="previewColor('#000000')" onClick="selectColor('#000000')" height="10" width="10"></td>
  <td bgcolor="#9900FF" onMouseOver="previewColor('#9900FF')" onClick="selectColor('#9900FF')" height="10" width="10"></td>
  <td bgcolor="#9933FF" onMouseOver="previewColor('#9933FF')" onClick="selectColor('#9933FF')" height="10" width="10"></td>
  <td bgcolor="#9966FF" onMouseOver="previewColor('#9966FF')" onClick="selectColor('#9966FF')" height="10" width="10"></td>
  <td bgcolor="#9999FF" onMouseOver="previewColor('#9999FF')" onClick="selectColor('#9999FF')" height="10" width="10"></td>
  <td bgcolor="#99CCFF" onMouseOver="previewColor('#99CCFF')" onClick="selectColor('#99CCFF')" height="10" width="10"></td>
  <td bgcolor="#99FFFF" onMouseOver="previewColor('#99FFFF')" onClick="selectColor('#99FFFF')" height="10" width="10"></td>
  <td bgcolor="#CC00FF" onMouseOver="previewColor('#CC00FF')" onClick="selectColor('#CC00FF')" height="10" width="10"></td>
  <td bgcolor="#CC33FF" onMouseOver="previewColor('#CC33FF')" onClick="selectColor('#CC33FF')" height="10" width="10"></td>
  <td bgcolor="#CC66FF" onMouseOver="previewColor('#CC66FF')" onClick="selectColor('#CC66FF')" height="10" width="10"></td>
  <td bgcolor="#CC99FF" onMouseOver="previewColor('#CC99FF')" onClick="selectColor('#CC99FF')" height="10" width="10"></td>
  <td bgcolor="#CCCCFF" onMouseOver="previewColor('#CCCCFF')" onClick="selectColor('#CCCCFF')" height="10" width="10"></td>
  <td bgcolor="#CCFFFF" onMouseOver="previewColor('#CCFFFF')" onClick="selectColor('#CCFFFF')" height="10" width="10"></td>
  <td bgcolor="#FF00FF" onMouseOver="previewColor('#FF00FF')" onClick="selectColor('#FF00FF')" height="10" width="10"></td>
  <td bgcolor="#FF33FF" onMouseOver="previewColor('#FF33FF')" onClick="selectColor('#FF33FF')" height="10" width="10"></td>
  <td bgcolor="#FF66FF" onMouseOver="previewColor('#FF66FF')" onClick="selectColor('#FF66FF')" height="10" width="10"></td>
  <td bgcolor="#FF99FF" onMouseOver="previewColor('#FF99FF')" onClick="selectColor('#FF99FF')" height="10" width="10"></td>
  <td bgcolor="#FFCCFF" onMouseOver="previewColor('#FFCCFF')" onClick="selectColor('#FFCCFF')" height="10" width="10"></td>
  <td bgcolor="#FFFFFF" onMouseOver="previewColor('#FFFFFF')" onClick="selectColor('#FFFFFF')" height="10" width="10"></td>
 </tr>
</table>
</center>
</body>
</html>
