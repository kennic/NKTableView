//
//  NKTableViewDelegate.swift
//  
//
//  Created by Nam Kennic on 7/1/22.
//

import UIKit

public class NKTableViewDelegate<T: UITableViewCell>: NSObject, UITableViewDelegate {
	// MARK: - Blocks
	public var willDisplayCell: ((T, IndexPath) -> Void)?
	public var willDisplayHeaderView: ((UIView, Int) -> Void)?
	public var willDisplayFooterView: ((UIView, Int) -> Void)?
	public var didEndDisplayingCell: ((UITableViewCell, IndexPath) -> Void)?
	public var didEndDisplayingHeaderView: ((UIView, Int) -> Void)?
	public var didEndDisplayingFooterView: ((UIView, Int) -> Void)?
	public var heightForRowAt: ((IndexPath) -> CGFloat)?
	public var heightForHeaderInSection: ((Int) -> CGFloat)?
	public var heightForFooterInSection: ((Int) -> CGFloat)?
	public var estimatedHeightForRowAt: ((IndexPath) -> CGFloat)?
	public var estimatedHeightForHeaderInSection: ((Int) -> CGFloat)?
	public var estimatedHeightForFooterInSection: ((Int) -> CGFloat)?
	public var viewForHeaderInSection: ((Int) -> UIView?)?
	public var viewForFooterInSection: ((Int) -> UIView?)?
	public var accessoryButtonTapped: ((IndexPath) -> Void)?
	public var shouldHighlightRowAt: ((IndexPath) -> Bool)?
	public var didHighlightRowAt: ((IndexPath) -> Void)?
	public var didUnhighlightRowAt: ((IndexPath) -> Void)?
	public var willSelectRowAt: ((IndexPath) -> IndexPath)?
	public var willDeselectRowAt: ((IndexPath) -> IndexPath)?
	public var didSelectRowAt: ((IndexPath) -> Void)?
	public var didDeselectRowAt: ((IndexPath) -> Void)?
	public var editingStyleForRowAt: ((IndexPath) -> UITableViewCell.EditingStyle)?
	public var titleForDeleteConfirmationButtonForRowAt: ((IndexPath) -> String)?
//	public var leadingSwipeActionsConfigurationForRowAt: ((IndexPath) -> UISwipeActionsConfiguration)?
//	public var trailingSwipeActionsConfigurationForRowAt: ((IndexPath) -> UISwipeActionsConfiguration)?
	public var shouldIndentWhileEditingRowAt: ((IndexPath) -> Bool)?
	public var willBeginEditingRowAt: ((IndexPath) -> Void)?
	public var didEndEditingRowAt: ((IndexPath?) -> Void)?
	public var targetIndexPathForMoveFromTo: ((IndexPath, IndexPath) -> IndexPath)?
	public var indentationLevelForRowAt: ((IndexPath) -> Int)?
	public var canFocusRowAt: ((IndexPath) -> Bool)?
	public var shouldUpdateFocusIn: ((UITableViewFocusUpdateContext) -> Bool)?
	public var didUpdateFocusIn: ((UITableViewFocusUpdateContext, UIFocusAnimationCoordinator) -> Void)?
	public var indexPathForPreferredFocusedView: ((UITableView) -> IndexPath?)?
	
	// MARK: - UITableViewDelegate
	
	public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) { willDisplayCell?(cell as! T, indexPath) }
	public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) { willDisplayHeaderView?(view, section) }
	public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) { willDisplayFooterView?(view, section) }
	public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) { didEndDisplayingCell?(cell, indexPath) }
	public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) { didEndDisplayingHeaderView?(view, section) }
	public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) { didEndDisplayingFooterView?(view, section) }
	public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { heightForRowAt?(indexPath) ?? 0 }
	public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { heightForHeaderInSection?(section) ?? 0 }
	public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat { heightForFooterInSection?(section) ?? 0 }
	public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat { estimatedHeightForRowAt?(indexPath) ?? 0 }
	public func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat { estimatedHeightForHeaderInSection?(section) ?? 0 }
	public func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat { estimatedHeightForFooterInSection?(section) ?? 0 }
	public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { viewForHeaderInSection?(section) }
	public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? { viewForFooterInSection?(section) }
	public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) { accessoryButtonTapped?(indexPath) }
	public func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool { shouldHighlightRowAt != nil ? shouldHighlightRowAt!(indexPath) : false }
	public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) { didHighlightRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) { didUnhighlightRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? { willSelectRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? { willDeselectRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { didSelectRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) { didDeselectRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle { editingStyleForRowAt?(indexPath) ?? .none }
	public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? { titleForDeleteConfirmationButtonForRowAt?(indexPath) }
//	public func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? { leadingSwipeActionsConfigurationForRowAt?(indexPath) }
//	public func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? { trailingSwipeActionsConfigurationForRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool { shouldIndentWhileEditingRowAt != nil ? shouldIndentWhileEditingRowAt!(indexPath) : false }
	public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) { willBeginEditingRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) { didEndEditingRowAt?(indexPath) }
	public func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath { targetIndexPathForMoveFromTo?(sourceIndexPath, proposedDestinationIndexPath) ?? proposedDestinationIndexPath }
	public func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int { indentationLevelForRowAt?(indexPath) ?? 0 }
	public func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool { canFocusRowAt != nil ? canFocusRowAt!(indexPath) : false }
	public func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool { shouldUpdateFocusIn != nil ? shouldUpdateFocusIn!(context) : false }
	public func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) { didUpdateFocusIn?(context, coordinator) }
	public func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? { indexPathForPreferredFocusedView?(tableView) }
	
	// MARK: - Nested functions
	
	@discardableResult
	public func willDisplayCell(_ block: @escaping (T, IndexPath) -> Void) -> Self {
		willDisplayCell = block
		return self
	}
	
	@discardableResult
	public func willDisplayHeaderView(_ block: @escaping (UIView, Int) -> Void) -> Self {
		willDisplayHeaderView = block
		return self
	}
	
	@discardableResult
	public func willDisplayFooterView(_ block: @escaping (UIView, Int) -> Void) -> Self {
		willDisplayFooterView = block
		return self
	}
	
	@discardableResult
	public func didEndDisplayingCell(_ block: @escaping (UITableViewCell, IndexPath) -> Void) -> Self {
		didEndDisplayingCell = block
		return self
	}
	
	@discardableResult
	public func didEndDisplayingHeaderView(_ block: @escaping (UIView, Int) -> Void) -> Self {
		didEndDisplayingHeaderView = block
		return self
	}
	
	@discardableResult
	public func didEndDisplayingFooterView(_ block: @escaping (UIView, Int) -> Void) -> Self {
		didEndDisplayingFooterView = block
		return self
	}
	
	@discardableResult
	public func heightForRowAt(_ block: @escaping (IndexPath) -> CGFloat) -> Self {
		heightForRowAt = block
		return self
	}
	
	@discardableResult
	public func heightForHeaderInSection(_ block: @escaping (Int) -> CGFloat) -> Self {
		heightForHeaderInSection = block
		return self
	}
	
	@discardableResult
	public func heightForFooterInSection(_ block: @escaping (Int) -> CGFloat) -> Self {
		heightForFooterInSection = block
		return self
	}
	
	@discardableResult
	public func estimatedHeightForRowAt(_ block: @escaping (IndexPath) -> CGFloat) -> Self {
		estimatedHeightForRowAt = block
		return self
	}
	
	@discardableResult
	public func estimatedHeightForHeaderInSection(_ block: @escaping (Int) -> CGFloat) -> Self {
		estimatedHeightForHeaderInSection = block
		return self
	}
	
	@discardableResult
	public func estimatedHeightForFooterInSection(_ block: @escaping (Int) -> CGFloat) -> Self {
		estimatedHeightForFooterInSection = block
		return self
	}
	
	@discardableResult
	public func viewForHeaderInSection(_ block: @escaping (Int) -> UIView?) -> Self {
		viewForHeaderInSection = block
		return self
	}
	
	@discardableResult
	public func viewForFooterInSection(_ block: @escaping (Int) -> UIView?) -> Self {
		viewForFooterInSection = block
		return self
	}
	
	@discardableResult
	public func accessoryButtonTapped(_ block: @escaping (IndexPath) -> Void) -> Self {
		accessoryButtonTapped = block
		return self
	}
	
	@discardableResult
	public func shouldHighlightRowAt(_ block: @escaping (IndexPath) -> Bool) -> Self {
		shouldHighlightRowAt = block
		return self
	}
	
	@discardableResult
	public func didHighlightRowAt(_ block: @escaping (IndexPath) -> Void) -> Self {
		didHighlightRowAt = block
		return self
	}
	
	@discardableResult
	public func didUnhighlightRowAt(_ block: @escaping (IndexPath) -> Void) -> Self {
		didUnhighlightRowAt = block
		return self
	}
	
	@discardableResult
	public func willSelectRowAt(_ block: @escaping (IndexPath) -> IndexPath) -> Self {
		willSelectRowAt = block
		return self
	}
	
	@discardableResult
	public func willDeselectRowAt(_ block: @escaping (IndexPath) -> IndexPath) -> Self {
		willDeselectRowAt = block
		return self
	}
	
	@discardableResult
	public func didSelectRowAt(_ block: @escaping (IndexPath) -> Void) -> Self {
		didSelectRowAt = block
		return self
	}
	
	@discardableResult
	public func didDeselectRowAt(_ block: @escaping (IndexPath) -> Void) -> Self {
		didDeselectRowAt = block
		return self
	}
	
	@discardableResult
	public func editingStyleForRowAt(_ block: @escaping (IndexPath) -> UITableViewCell.EditingStyle) -> Self {
		editingStyleForRowAt = block
		return self
	}
	
	@discardableResult
	public func titleForDeleteConfirmationButtonForRowAt(_ block: @escaping (IndexPath) -> String) -> Self {
		titleForDeleteConfirmationButtonForRowAt = block
		return self
	}
	
	@discardableResult
	public func shouldIndentWhileEditingRowAt(_ block: @escaping (IndexPath) -> Bool) -> Self {
		shouldIndentWhileEditingRowAt = block
		return self
	}
	
	@discardableResult
	public func willBeginEditingRowAt(_ block: @escaping (IndexPath) -> Void) -> Self {
		willBeginEditingRowAt = block
		return self
	}
	
	@discardableResult
	public func indentationLevelForRowAt(_ block: @escaping (IndexPath) -> Int) -> Self {
		indentationLevelForRowAt = block
		return self
	}
	
	@discardableResult
	public func canFocusRowAt(_ block: @escaping (IndexPath) -> Bool) -> Self {
		canFocusRowAt = block
		return self
	}
	
	@discardableResult
	public func shouldUpdateFocusIn(_ block: @escaping (UITableViewFocusUpdateContext) -> Bool) -> Self {
		shouldUpdateFocusIn = block
		return self
	}
	
	@discardableResult
	public func didUpdateFocusIn(_ block: @escaping (UITableViewFocusUpdateContext, UIFocusAnimationCoordinator) -> Void) -> Self {
		didUpdateFocusIn = block
		return self
	}
	
	@discardableResult
	public func indexPathForPreferredFocusedView(_ block: @escaping (UITableView) -> IndexPath?) -> Self {
		indexPathForPreferredFocusedView = block
		return self
	}
	
}
