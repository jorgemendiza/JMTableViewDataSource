//
//  ViewController.swift
//  JMTableViewDataSource
//
//  Created by Jorge Mendizabal on 11/28/2016.
//  Copyright (c) 2016 Jorge Mendizabal. All rights reserved.
//

import UIKit
import JMTableViewDataSource

class ViewController: UIViewController {
    
    let dataSource = JMTableViewDataSource(with: ["String 1", "String 2", "String 3"], cellIdentifier: MyCellTableViewCell.identifier)
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MyCellTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MyCellTableViewCell.identifier)
        tableView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

