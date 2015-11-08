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
        
        self.restuarantImageView.layer.cornerRadius = self.restuarantImageView.frame.size.width / 2
        self.restuarantImageView.clipsToBounds = true
        self.restuarantImageView.layer.borderWidth = 3.0
        self.restuarantImageView.layer.borderColor = UIColor(red: 131/255, green: 139/255, blue: 199/255, alpha: 1.0).CGColor
        
        self.restuarantImageView.image = resturant.image
        self.resturantName.text = resturant.name
        self.resturantAddress.text = resturant.address
    }

}
