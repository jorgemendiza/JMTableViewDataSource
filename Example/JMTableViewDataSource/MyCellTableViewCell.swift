//
//  MyCellTableViewCell.swift
//  JMTableViewDataSource
//
//  Created by Jorge Mendizabal on 12/8/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import JMTableViewDataSource

class MyCellTableViewCell: UITableViewCell {

    static let identifier = "MyCellIdentifier"
    
    @IBOutlet weak var labelMyCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension MyCellTableViewCell: ConfigureCellProtocol {
    func configureCell(_ object: Object) {
        if let string = object as? String {
            labelMyCell.text = string
        } else {
            print("The object not is String")
        }
    }
}
