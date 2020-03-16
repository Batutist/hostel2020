//
//  RoomsUserTableViewCell.swift
//  HostelNumberOne
//
//  Created by Кирилл on 18/10/2019.
//  Copyright © 2019 Кирилл. All rights reserved.
//

import UIKit

class RoomsUserTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var switchOutlet: UISwitch!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
