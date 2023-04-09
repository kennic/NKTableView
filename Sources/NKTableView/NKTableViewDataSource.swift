//
//  NKTableViewDataSource.swift
//  
//
//  Created by Nam Kennic on 7/1/22.
//

import UIKit

public class NKTableViewDataSource<T: UITableViewCell>: NSObject, UITableViewDataSource {
	// MARK: - Blocks
	public var numberOfRows: ((Int) -> Int)?
	public var numberOfSections: (() -> Int)?
	public var cellForRowAt: ((UITableView, IndexPath) -> T)?
	public var titleForHeaderInSection: ((Int) -> String?)?
	public var titleForFooterInSection: ((Int) -> String?)?
	public var canEditRowAt: ((IndexPath) -> Bool)?
	public var canMoveRowAt: ((IndexPath) -> Bool)?
	public var sectionIndexTitles: (() -> [String]?)?
	public var sectionForSectionIndexTitle: ((String, Int) -> Int)?
	public var commitEditingStyleForRow: ((UITableViewCell.EditingStyle, IndexPath) -> Void)?
	public var moveRowAtTo: ((IndexPath, IndexPath) -> Void)?
	
	// MARK: - UITableViewDataSource
	
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { numberOfRows?(section) ?? 1 }
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { cellForRowAt?(tableView, indexPath) ?? T() }
	public func numberOfSections(in tableView: UITableView) -> Int { numberOfSections?() ?? 1 }
	public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { titleForHeaderInSection?(section) }
	public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? { titleForFooterInSection?(section) }
	public func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool { canEditRowAt?(indexPath) ?? true }
	public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool { canMoveRowAt?(indexPath) ?? false }
	public func sectionIndexTitles(for tableView: UITableView) -> [String]? { sectionIndexTitles?() }
	public func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int { sectionForSectionIndexTitle?(title, index) ?? 0 }
	public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) { commitEditingStyleForRow?(editingStyle, indexPath) }
	public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) { moveRowAtTo?(sourceIndexPath, destinationIndexPath) }
	
	// MARK: - Nested functions
	
	@discardableResult
	public func numberOfRowsInSection(_ block: @escaping (Int) -> Int) -> Self {
		numberOfRows = block
		return self
	}
	
	@discardableResult
	public func cellForRowAt(_ block: @escaping (UITableView, IndexPath) -> T) -> Self {
		cellForRowAt = block
		return self
	}
	
	@discardableResult
	public func numberOfSections(_ block: @escaping () -> Int) -> Self {
		numberOfSections = block
		return self
	}
	
	@discardableResult
	public func titleForHeaderInSection(_ block: @escaping (Int) -> String?) -> Self {
		titleForHeaderInSection = block
		return self
	}
	
	@discardableResult
	public func titleForFooterInSection(_ block: @escaping (Int) -> String?) -> Self {
		titleForFooterInSection = block
		return self
	}
	
	@discardableResult
	public func canEditRowAt(_ block: @escaping (IndexPath) -> Bool) -> Self {
		canEditRowAt = block
		return self
	}
	
	@discardableResult
	public func canMoveRowAt(_ block: @escaping (IndexPath) -> Bool) -> Self {
		canMoveRowAt = block
		return self
	}
	
	@discardableResult
	public func sectionIndexTitles(_ block: @escaping () -> [String]?) -> Self {
		sectionIndexTitles = block
		return self
	}
	
	@discardableResult
	public func sectionForSectionIndexTitle(_ block: @escaping (String, Int) -> Int) -> Self {
		sectionForSectionIndexTitle = block
		return self
	}
	
	@discardableResult
	public func commitEditingStyleForRow(_ block: @escaping (UITableViewCell.EditingStyle, IndexPath) -> Void) -> Self {
		commitEditingStyleForRow = block
		return self
	}
	
	@discardableResult
	public func moveRowAtTo(_ block: @escaping (IndexPath, IndexPath) -> Void) -> Self {
		moveRowAtTo = block
		return self
	}
	
}

