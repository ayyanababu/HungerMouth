//
//  ResturantMenu.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import Foundation
import UIKit

class ResturantMenu
{
    var menuName: String
    var menuImage: UIImage
    var menuPrice: Int
    var menuQuantity: Int
    
    init(menuName: String, menuImage: String, menuPrice: Int, menuQuantity: Int){
        self.menuName = menuName
        if let img = UIImage(named: menuImage) {
            self.menuImage = img
        } else {
            self.menuImage = UIImage(named: "default")!
        }
        self.menuPrice = menuPrice
        self.menuQuantity = menuQuantity
    }
}