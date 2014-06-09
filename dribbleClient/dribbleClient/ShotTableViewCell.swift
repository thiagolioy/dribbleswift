//
//  ShotTableViewCell.swift
//  dribbleClient
//
//  Created by Thiago Lioy on 6/8/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import UIKit

class ShotTableViewCell: UITableViewCell {
    
    @IBOutlet
    var shotImage:UIImageView?
    @IBOutlet
    var shotTitle:UILabel
    
    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
