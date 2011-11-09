class ItemRecordView
  onClick: () ->
      win = Ti.UI.createWindow
              hasChild:true
              url:"show.js"
              data:@data
      Ti.UI.currentTab.open win,
            animated:true
  
  constructor:(params) ->
    @data = params.data

    row = Ti.UI.createTableViewRow
        className:'datarow'
        selectedBackgroundColor:'#fff'
        height:100
    row.addEventListener 'click', (e) => @onClick()

    # add image
    mainIcon = Ti.UI.createView
        backgroundImage:params.iconImage
        top:5
        left:10
        width:50
        height:50
    mainIcon.rowNum = params.index
    mainIcon.addEventListener 'click', (e) => @onClick()
    row.add mainIcon
    
    # add label
    title = Ti.UI.createLabel
        color:'#576996'
        font:{fontSize:16, fontWeight:'bold', fontFamily:'Arial'}
        left:70
        top:2
        height:30
        width:200
        text:params.title
    title.rowNum = params.index
    title.addEventListener 'click', (e) => @onClick()
    row.add title

    # add Button
    button = Ti.UI.createView
        backgroundImage: params.buttonImage
        top:35
        right:5
        width:36
        height:34
    button.rowNum = params.index
    button.addEventListener 'click', (e) => @onClick()
    row.add button
       
    # add Label2
    message = Ti.UI.createLabel
        text:params.text
    message.addEventListener 'click', (e) => @onClick()
    row.add message
    
    return row
