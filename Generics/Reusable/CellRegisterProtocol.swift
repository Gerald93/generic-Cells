//
//  CellRegisterProtocol.swift
//  Generics
//
//  Created by Gerald Collaku on 25.02.20.
//  Copyright © 2020 Gerald Collaku. All rights reserved.
//

import Foundation
import  UIKit

protocol RegistrableCell: class {
    static var nibName: String { get }
    static var reuseIdentifier: String { get }
}

extension RegistrableCell where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
