Ti.UI.setBackgroundColor '#000'

tabGroup = Ti.UI.createTabGroup()

searchTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'検索'
   window:
      Ti.UI.createWindow
         url:"windows/search.js"

favoritTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'お気に入り'
   window:
      Ti.UI.createWindow
         url:"windows/favorit.js"
         
mapTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'地図(Map)'
   window:
      Ti.UI.createWindow
         url:"windows/map.js"

#tabGroup.addTab tab1
tabGroup.addTab searchTab
tabGroup.addTab favoritTab
tabGroup.addTab mapTab

tabGroup.open()

