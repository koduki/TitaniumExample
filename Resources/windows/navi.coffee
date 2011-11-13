
window = Ti.UI.currentWindow

window.barColor = '#385292'

map = Ti.UI.createWebView
  url:"http://www.google.com"

window.add map
