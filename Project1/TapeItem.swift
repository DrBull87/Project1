//
//  TapeItem.swift
//  Project1
//
//  Created by Айк Шатворян on 19.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit

class TapeItem: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setTitle(title: String) {
        titleLabel.text = title
    }
}
