//
//  ImageCell.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell, ConfigurableCell {

    @IBOutlet weak var pictureView: UIImageView!
    
    func configure(data imageName: String) {
        self.pictureView.image = UIImage(named: imageName)
    }
}
