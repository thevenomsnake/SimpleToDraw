//
//  TableViewCell.swift
//  ColorPicker
//
//  Created by 涂舒舰 on 2017/12/24.
//  Copyright © 2017年 WWITDC. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgSelf: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
