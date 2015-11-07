//
//  MenuTableViewCell.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var menuQuantity: UITextField!
    
    
    func configureUI(menu: ResturantMenu)
    {
        self.menuImage.image = menu.menuImage
        self.menuName.text = menu.menuName
        self.menuPrice.text = String(menu.menuPrice)
    }
    
}
