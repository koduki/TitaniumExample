currentWindow = Ti.UI.currentWindow

items = [
    {
        title:"item1-_-"
        latitude:35.6586
        longitude:139.745
    }
    {
        title:"item2"
        latitude:35.586
        longitude:139.45
    }
]

Ti.Geolocation.preferredProvider = "gps"
mapView = Ti.Map.createView
    mapType: Ti.Map.STANDARD_TYPE
    region:
        latitude:35.658609
        longitude:139.74544
        latitudeDelta: 0.001
        longitudeDelta:0.001
    animate:true
    regionFit:true
    userLocation:true
    draggable:true
currentWindow.add mapView

item = items[0]
pin1 = Ti.Map.createAnnotation
    latitude:item.latitude
    longitude:item.longitude
    title:item.title
    pincolor:Ti.Map.ANNOTATION_RED 
    item:item

mapView.addEventListener 'click', (e) ->
    if(e.annotation)
        Ti.API.info(e.title)
        win = Ti.UI.createWindow
            id:"itemDetailWin"
            hasChild:true

        label1 = Ti.UI.createLabel
            text:"title: " + item.title
            top:10
        win.add label1

        Ti.UI.currentTab.open win,
            animated:true

mapView.addAnnotation pin1

label1 = Ti.UI.createLabel
   left:45
   top:13
   height:42
   width:240
   text:'hello'

currentWindow.add label1

getCurrentLocation = (e) ->
        mapView.setLocation
           latitude:e.coords.latitude
           longitude:e.coords.longitude
           latitudeDelta: 0.04
           longitudeDelta:0.04

        label1.text = e.coords.latitude

Ti.Android.currentActivity.onCreateOptionsMenu = (e) ->
   Ti.API.debug 'onCreateOptionsMenu'
   menu = e.menu

   menu1 = menu.add
      title:'現在位置'
      itemId:0

   menu2 = menu.add
      title:'menu2'
      itemId:1

   menu1.addEventListener "click", (e) ->
           label1.text = 'add event'
           Ti.Geolocation.purpose = "GPS demo"
           Ti.Geolocation.accuracy = Ti.Geolocation.ACCURACY_BEST
           Ti.Geolocation.getCurrentPosition( getCurrentLocation)

   menu2.addEventListener "click", (e) ->
           mapView.zoom(1)
           #Ti.Geolocation.removeEventListener("location", getCurrentLocation)
