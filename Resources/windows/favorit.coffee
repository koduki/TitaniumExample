currentWindow = Ti.UI.currentWindow
rows = [
    {title:'Row 1', hasChild:true},
    {title:'Row 2', hasDetail:true},
    {title:'Row 3', hasCheck:true},
    {title:'Row 4'}
]

itemView = Ti.UI.createTableView
    data: rows
    
itemView.addEventListener 'click', (e) -> 
    index    = e.index
    section  = e.section
    row      = e.row
    rowdata  = e.rowData

currentWindow.add itemView