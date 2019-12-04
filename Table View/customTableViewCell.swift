//
//  customTableViewCell.swift
//  Table View
//
//  Created by Fahim Rahman on 24/11/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var LeftLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
