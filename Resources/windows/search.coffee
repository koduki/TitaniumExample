Ti.include 'record_view.js'
Ti.include '../models/itemDao.js'

window = Ti.UI.currentWindow

window.barColor = '#385292'

# search bar


# header
headerRow = Ti.UI.createTableViewRow
    className:'header'
    backgroundColor:'#576996'
    selectedBackgroundColor:'#385292'
    height:'auto'
row = Ti.UI.createTableViewRow
    className:'header2'
    backgroundColor:'red'
    selectedBackgroundColor:'#385292'
    height:'auto'
    layout:'vertical'
    
searchBox = Ti.UI.createTextField
    text:'キーワードを入れてください'
    font:{fontSize:14} 
    width:'100%'
    height:'auto'
    top:5
    left:0
label1 = Ti.UI.createLabel
    text:'キーワード検索'
    color:'#fff'
    width:'auto'
    height:'auto'
    top:5
    left:0
label2 = Ti.UI.createLabel
    text:'ジャンル検索'
    color:'#fff'
    width:'auto'
    height:'auto'
    top:5
    left:0

genre = Ti.UI.createPicker
  left:10
  right:10
  width:"auto"

data = []
data[0] = Ti.UI.createPickerRow
    title:"test1"
    custom_item:'t1'
data[1] = Ti.UI.createPickerRow
    title:"test2"
    custom_item:'t2'
genre.add data

searchButton = Ti.UI.createButton
  title:"検索"
  color:"000000"
  backgraoundColor:"red"
  left:10
  right:10
  width:"auto"

row.add label1
row.add searchBox
row.add label2
row.add genre
row.add searchButton

#headerTableRow.add searchBar
headerRow.add Titanium.UI.createTableView
    data: [row]

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
