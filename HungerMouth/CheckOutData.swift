//
//  CheckOutData.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import Foundation


class CheckOutData {
    
    var resturantName: String
    var resturantAddress: String
    var menuName: String
    var quantity: Int
    var price: Int
    
    init(resturantName: String, address: String, menuName: String, quantity: Int, price: Int){
        self.resturantName = resturantName
        self.resturantAddress = address
        self.menuName = menuName
        self.quantity = quantity
        self.price = price
    }
   
}
    
