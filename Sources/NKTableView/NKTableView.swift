import UIKit

open class NKTableView<T: UITableViewCell>: UITableView {
	public let tableDataSource = NKTableViewDataSource<T>()
	public let tableDelegate = NKTableViewDelegate<T>()
    
	override public init(frame: CGRect, style: UITableView.Style) {
		super.init(frame: frame, style: style)
		
		self.dataSource = tableDataSource
		self.delegate = tableDelegate
    }
	
	required public init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
