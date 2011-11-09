Ti.include 'record_view.js'
window = Ti.UI.currentWindow


window.barColor = '#385292'

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

buildView = (i) ->    
  new ItemRecordView
    index:i
    title:"Title " + i
    text:"Hello World"
    iconImage:'../KS_nav_views.png'
    buttonImage:'../KS_nav_ui.png'
itemRecords = (buildView i for i in [1..50])

tableView = Titanium.UI.createTableView
    data: [headerRow].concat(itemRecords)
 
window.add tableView
