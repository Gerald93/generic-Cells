//
//  UICollectionView+RegisterCell.swift
//  Generics
//
//  Created by Gerald Collaku on 25.02.20.
//  Copyright © 2020 Gerald Collaku. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func register(_ nib: RegistrableCell.Type) {
        self.register(UINib(nibName: nib.nibName, bundle: nil), forCellWithReuseIdentifier: nib.reuseIdentifier)
    }
    
    func register(_ nibArray: [RegistrableCell.Type]) {
        nibArray.forEach {
            self.register($0)
        }
    }
    
}


