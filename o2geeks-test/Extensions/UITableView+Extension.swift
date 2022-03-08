//
//  UITableView+Extension.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<Cell: UITableViewCell>(for indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell else {
            fatalError("Fatal error for reuseable cell at : \(indexPath)")
        }
        return cell
    }
}
