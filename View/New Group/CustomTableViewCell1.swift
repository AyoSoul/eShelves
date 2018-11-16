//
//  CustomTableViewCell1.swift
//  eShelves
//
//  Created by Ayo Soul on Mac on 15/11/2018.
//  Copyright © 2018 Ayo Soul on Mac. All rights reserved.
//

import UIKit

class CustomTableViewCell1: UITableViewCell {

    @IBOutlet weak var bookcaseName: UILabel!
    
    @IBOutlet weak var bookcaseNoOfBooks: UILabel!
    
    @IBOutlet weak var bookcaseLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
