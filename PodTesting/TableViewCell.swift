//
//  TableViewCell.swift
//  PodTesting
//
//  Created by Sierra 4 on 07/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var lblOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
