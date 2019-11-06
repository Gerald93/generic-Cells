//
//  CellConfigurator.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit

///Protocol where each cell should conform to.
protocol ConfigurableCell {
    associatedtype DataType
    func configure(data: DataType)
    static func nib() -> UINib
    static var reuseIdentifier: String { get }
}

/// Protoco helpfulll as we can hold generic classes in array without defining data types
protocol CellConfigurator {
    static var reuseIdentifier: String { get }
    func configure(cell: UIView)
}

///generic class with type constraints for CellType and DataType
class TableCellConfigurator<CellType: ConfigurableCell, DataType> : CellConfigurator where
CellType.DataType == DataType, CellType: UITableViewCell {
    
    static var reuseIdentifier: String {
        return String(describing: CellType.self)
    }
    
    let item: DataType
    
    init(item: DataType) {
        self.item = item
    }
    
    func configure(cell: UIView) {
        (cell as! CellType).configure(data: item)
    }
}

extension ConfigurableCell where Self: UIView {
    
    static func nib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
    static var reuseIdentifier: String {
          return String(describing: self)
      }
}
