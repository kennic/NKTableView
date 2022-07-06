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

## Installation

NKTableView is available through `Swift Package Manager` (Recommended) and [CocoaPods](http://cocoapods.org):

Regardless, make sure to import the project wherever you may use it:

```swift
import NKTableView
```

### Cocoapods:
NKTableView can be installed as a [CocoaPod](https://cocoapods.org/). To install, include this in your Podfile.

```ruby
pod "NKTableView"
```


### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into Xcode and the Swift compiler. **This is the recommended installation method.** Updates to FrameLayoutKit will always be available immediately to projects with SPM. SPM is also integrated directly with Xcode.

If you are using Xcode 11 or later:
 1. Click `File`
 2. `Add Packages...`
 3. Specify the git URL for NKTableView.

```swift
https://github.com/kennic/NKTableView.git
```
