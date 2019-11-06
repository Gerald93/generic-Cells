//
//  TableViewModel.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit

class TableViewModel {
    
    lazy var items: [CellConfigurator] = [
        ImageCellConfig.init(item: "beach"),
        UserCellConfig.init(item: User(name: "Gerald", imageName: "geri")),
        ImageCellConfig.init(item: "beach"),
        UserCellConfig.init(item: User(name: "Gerald", imageName: "geri")),
        UserCellConfig.init(item: User(name: "Gerald", imageName: "geri")),
        ImageCellConfig.init(item: "beach"),
        ImageCellConfig.init(item: "beach"),
        ImageCellConfig.init(item: "beach"),
        ImageCellConfig.init(item: "beach")
    ]
}

extension TableViewModel {
    /// Cell configurator type defined with User Cell
    typealias UserCellConfig = TableCellConfigurator<UserCell, User>
    
    /// Cell configurator type defined with ImageCell
    typealias ImageCellConfig = TableCellConfigurator<ImageCell, String>
    
}
