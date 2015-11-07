//
//  CheckOutCellView.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class CheckOutCellView: UITableViewCell {

    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var quantitySum: UILabel!
    
    func configureUI(chekoutData: CheckOutData){
        self.menuName.text = chekoutData.menuName
        self.menuPrice.text = String(chekoutData.price)
        let stringQuantity = String(chekoutData.quantity)
        let finalquantity = stringQuantity + "  X"
        self.quantitySum.text = finalquantity
        
    }
   
}
