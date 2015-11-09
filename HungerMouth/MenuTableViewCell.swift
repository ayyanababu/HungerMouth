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
        
       /* self.menuImage.layer.cornerRadius = self.menuImage.frame.size.width / 2
        self.menuImage.clipsToBounds = true
        self.menuImage.layer.borderWidth = 3.0
        self.menuImage.layer.borderColor = UIColor(red: 131/255, green: 139/255, blue: 199/255, alpha: 1.0).CGColor*/
        
        
        self.menuImage.image = menu.menuImage
        self.menuName.text = menu.menuName
        self.menuPrice.text = String(menu.menuPrice)
        self.menuQuantity.text = String(menu.menuQuantity)
    }
    
}
