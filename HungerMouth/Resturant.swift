//
//  Resturant.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import Foundation
import UIKit


public enum ResturantRating
{
    case Unrated
    case Average
    case OK
    case Good
    case Brilliant
}

class Resturant
{
    var name: String
    var address: String
    var image: UIImage
    var rating: ResturantRating
    
    init(name: String, address: String, imageName: String)
    {
        self.name = name
        self.address = address
        if let img = UIImage(named: imageName) {
            image = img
        } else {
            image = UIImage(named: "default")!
        }
        rating = .Unrated
    }
}