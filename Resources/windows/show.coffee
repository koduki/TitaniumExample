window = Ti.UI.currentWindow
window.barColor = '#385292'

label1 = Ti.UI.createLabel
          text:window.data.name
          top:10
          
window.add label1