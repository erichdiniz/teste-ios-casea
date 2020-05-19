//
//  SensorsTableViewCell.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 15/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import UIKit

class SensorsTableViewCell: UITableViewCell {

    @IBOutlet weak var sensorID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
