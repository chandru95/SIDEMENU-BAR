//
//  menuTableViewCell.swift
//  sideMeniuTask4
//
//  Created by vaishnavi  on 05/10/23.
//

import UIKit

class menuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var menuImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
