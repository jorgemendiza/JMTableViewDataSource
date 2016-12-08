//
//  JMTableViewDataSource.swift
//
//  Created by Jorge Mendizabal on 11/10/16.
//  Copyright © 2016 Jorge Mendizabal. All rights reserved.
//

import UIKit

public typealias Object = Any

public protocol ConfigureCellProtocol: class {
    func configureCell(_ object: Object)
}

public class JMTableViewDataSource: NSObject, UITableViewDataSource {
    
    public var items: [Object]
    public let cellIdentifier: String
    
    public init(with items: [Object], cellIdentifier: String){
        self.cellIdentifier = cellIdentifier
        self.items = items
        super.init()
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ConfigureCellProtocol else {
            print("cell not implements -ConfigureCellProtocol-")
            return UITableViewCell()
        }
        cell.configureCell(items[indexPath.row])
        return cell as! UITableViewCell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}
