//
//  FeedTableViewCell.swift
//  Oryx
//
//  Created by Brian Endo on 7/21/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var posterLabel: UILabel!
    @IBOutlet weak var endorserLabel: UILabel!
    @IBOutlet weak var goingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
