window = Ti.UI.currentWindow
window.barColor = '#385292'

rowData = []

# header
headerRow = Ti.UI.createTableViewRow
    className:'header'
    backgroundColor:'#576996'
    selectedBackgroundColor:'#385292'
    height:40

clickLabel = Ti.UI.createLabel
    text:'Click different parts of the row'
    color:'#fff'
    textAlign:'center'
    font:{fontSize:14} 
    width:'auto'
    height:'auto'
    
headerRow.add clickLabel
rowData.push headerRow

itemsView = (c) ->
    row = Ti.UI.createTableViewRow
        selectedBackgroundColor:'#fff'
        height:100
        className:'datarow'
   
    # add image
    photo = Ti.UI.createView
        backgroundImage:'../KS_nav_views.png'
        top:5
        left:10
        width:50
        height:50
    photo.rowNum = c
    photo.addEventListener 'click', (e) ->
        Ti.API.info 'clikc it!'
    row.add photo
    
    # add label
    user = Ti.UI.createLabel
        color:'#576996'
        font:{fontSize:16, fontWeight:'bold', fontFamily:'Arial'}
        left:70
        top:2
        height:30
        width:200
        text:'Fred Smith ' + c
    user.rowNum = c
    user.addEventListener 'click', (e) ->
        Ti.API.info 'click it!'
    row.add user

    # add label2
    comment = Ti.UI.createLabel
        color:'#222'
        font:{fontSize:16, fontWeight:'normal', fontFamily:'Arial'}
        left:70
        top:21
        height:50
        width:200
        text:'Got some fresh fruit, conducted some business, took a nap'
    row.add comment

    # add View
    calendar = Ti.UI.createView
        backgroundImage:'../KS_nav_views.png'
        bottom:2
        left:70
        width:32
        height:32
    calendar.rowNum = c
    calendar.addEventListener 'click', (e) ->
        Ti.API.info 'click it!'
    row.add calendar

    # add Button
    button = Ti.UI.createView
        backgroundImage:'../KS_nav_views.png'
        top:35
        right:5
        width:36
        height:34
    button.rowNum = c
    button.addEventListener 'click', (e) ->
        Ti.API.info 'click it!'
    row.add button
       
    # add Label2
    date = Ti.UI.createLabel
        text:'posted on 3/11'
    row.add date
    
    rowData.push row

itemsView i for i in [1..50]

tableView = Titanium.UI.createTableView
    data:rowData
 
window.add tableView
