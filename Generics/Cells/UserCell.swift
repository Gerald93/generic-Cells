//
//  UserCell.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell, ConfigurableCell {
  
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!

    func configure(data user: User) {
        avatarView.image = UIImage(named: user.imageName)
        userNameLabel.text = user.name
    }
}

