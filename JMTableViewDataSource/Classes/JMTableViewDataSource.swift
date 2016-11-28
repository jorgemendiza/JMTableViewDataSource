//
//  BPTableViewDataSource.swift
//  Body Pass
//
//  Created by Jorge Mendizabal on 11/2/16.
//  Copyright © 2016 Circulo Gourmet Jorge Mendizabal. All rights reserved.
//

import UIKit

typealias Object = AnyObject

protocol ConfigureCellProtocol {
    func configureCell(object: Object)
}

class JMTableViewDataSource: NSObject, UITableViewDataSource {
    
    var items: [Object]
    let cellIdentifier: String
    
    init(with items: [Object], cellIdentifier: String){
        self.cellIdentifier = cellIdentifier
        self.items = items
        super.init()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ConfigureCellProtocol else {
            print("cell not implements -ConfigureCellProtocol-")
            return UITableViewCell()
        }
        cell.configureCell(object: items[indexPath.row])
        return cell as! UITableViewCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}
