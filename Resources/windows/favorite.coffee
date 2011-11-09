Ti.include 'record_view.js'
Ti.include '../models/itemDao.js'

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

buildView = (item) ->    
  new ItemRecordView
    data:item
    title:item.name
    text:item.description
    iconImage:item.image
    buttonImage:'../KS_nav_ui.png'
    
items = FavoriteItemDao.find()
itemRecords = (buildView item for item in items)

tableView = Titanium.UI.createTableView
    data: [headerRow].concat(itemRecords)
 
window.add tableView
