//
//  DiscoverTableViewCell.swift
//  Clothes Shopping
//
//  Created by Pritam Bolenwar on 24/03/21.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var priceLb2: UILabel!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var priceLb3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
