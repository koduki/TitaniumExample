
window = Ti.UI.currentWindow

window.barColor = '#385292'

loadMapHtml = (params) ->
  file = Titanium.Filesystem.getFile(Titanium.Filesystem.resourcesDirectory, params.path)
  html = file.read().text
  
  html.replace("#from_replacedata", params.from)
      .replace("#to_replacedata", params.to)
      .replace("#width_replacedata", params.width)
      .replace("#height_replacedata", params.height)

map = Ti.UI.createWebView
  html:loadMapHtml
        path:"web/navi.html"
        from:"品川シーサイド駅（東京）"
        to:"東京都品川区南品川３丁目４−１１"
        width:300
        height:250

window.add map
