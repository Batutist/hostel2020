//
//  RoomsAdminTableViewCell.swift
//  HostelNumberOne
//
//  Created by Кирилл on 19/10/2019.
//  Copyright © 2019 Кирилл. All rights reserved.
//

import UIKit

class RoomsAdminTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
