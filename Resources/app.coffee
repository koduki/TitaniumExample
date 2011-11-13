Ti.UI.setBackgroundColor '#000'

tabGroup = Ti.UI.createTabGroup()

searchTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'検索'
   window:
      Ti.UI.createWindow
         url:"windows/search.js"

favoriteTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'お気に入り'
   window:
      Ti.UI.createWindow
         url:"windows/favorite.js"
         
mapTab = Ti.UI.createTab
   icon:'KS_nav_views.png'
   title:'地図(Map)'
   window:
      Ti.UI.createWindow
         url:"windows/navi.js"

#tabGroup.addTab tab1
tabGroup.addTab searchTab
tabGroup.addTab favoriteTab
tabGroup.addTab mapTab

tabGroup.open()

