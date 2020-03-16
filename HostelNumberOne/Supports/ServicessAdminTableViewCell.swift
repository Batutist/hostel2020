//
//  ServicessAdminTableViewCell.swift
//  HostelNumberOne
//
//  Created by Кирилл on 23/10/2019.
//  Copyright © 2019 Кирилл. All rights reserved.
//

import UIKit

class ServicessAdminTableViewCell: UITableViewCell {


    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var priceTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
