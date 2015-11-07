//
//  ResturantTableViewCell.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 06/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class ResturantTableViewCell: UITableViewCell {

   
    @IBOutlet weak var restuarantImageView: UIImageView!
    @IBOutlet weak var resturantName: UILabel!
    @IBOutlet weak var resturantAddress: UILabel!
    
    
    func configureCellWithResturant(resturant: Resturant){
        self.restuarantImageView.image = resturant.image
        self.resturantName.text = resturant.name
        self.resturantAddress.text = resturant.address
    }

}
