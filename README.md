# NKTableView

A block-based TableView to replace UITableView's delegate and dataSource for shorter code and easier to use

```swift
let tableView = NKTableView(frame: .zero, style: .plain)
		
tableView.tableDataSource
	.numberOfRowsInSection { section in 1 }
	.cellForRowAt { tableView, indexPath in tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell") }
		
tableView.tableDelegate
	.willDisplayCell { cell, indexPath in configCell(cell) }
	.didSelectRowAt { indexPath in showDetails(indexPath) }
	.heightForRowAt { indexPath in 50.0 }
```
