//
//  ShopCell.swift
//  Shop
//
//  Created by Esraa Khaled   on 11/08/2022.
//

import UIKit

class ShopCell: UITableViewCell {

    @IBOutlet weak var shopImg: UIImageView!
    
    @IBOutlet weak var sweetView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func GoToShopPressed(_ sender: Any) {
    }
    
}
