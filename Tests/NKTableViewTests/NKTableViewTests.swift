import XCTest
@testable import NKTableView

class TestCell: UITableViewCell {
	
}

final class NKTableViewTests: XCTestCase {
	
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
		
		let tableView = NKTableView<TestCell>(frame: .zero, style: .plain)
		
		tableView.tableDataSource
			.numberOfRowsInSection { section in 1 }
			.cellForRowAt { tableView, indexPath in tableView.dequeueReusableCell(withIdentifier: "cell") as? TestCell ?? TestCell(style: .default, reuseIdentifier: "cell") }
		
		tableView.tableDelegate
			.willDisplayCell { cell, indexPath in }
			.didSelectRowAt { indexPath in }
			.heightForRowAt { indexPath in 50.0 }
		
    }
	
}
