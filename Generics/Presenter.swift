//
//  Presnter.swift
//  Generics
//
//  Created by Gerald Collaku on 06.11.19.
//  Copyright © 2019 Gerald Collaku. All rights reserved.
//

import UIKit


protocol TableViewDelegate: UIViewController {
    /**
        Tell the delegate when selected row
       - parameter row: Selected row
     */
    func didSelect(row: Int)
    
}

/// Keep it simple. Presenter is responsible for delegates or data sources
class TablePresenter: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    weak var tableView: UITableView!
    weak var view:TableViewDelegate?
    
    private var viewModel = TableViewModel()
    
    init(with owner: UITableView) {
        
        super.init()
        tableView = owner
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UserCell.nib(), forCellReuseIdentifier: UserCell.reuseIdentifier)
        tableView.register(ImageCell.nib(), forCellReuseIdentifier: ImageCell.reuseIdentifier)
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
        tableView.tableFooterView = UIView()
    }
    
    //MARK: - TableView Datasource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.items[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: item).reuseIdentifier)!
        item.configure(cell: cell)
        return cell
     
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        view?.didSelect(row: indexPath.row)
    }
    
}
