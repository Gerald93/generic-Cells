//
//  ViewController.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit

/// View Controller should be reponsible for updating but not too much other repsonsibility

class ViewController: UIViewController, TableViewDelegate {

    private var presenter: TablePresenter!
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter = TablePresenter(with: self.tableview)
        presenter.view = self
    }
    
    // MARK: TableView Delegate
    
    func didSelect(row: Int) {
        // do something on cell selected. navigate ??
    }

}

