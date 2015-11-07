//
//  UserDetails.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class UserDetails: UIViewController {

    @IBOutlet weak var userAddress: UITextView!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var modePayment: UILabel!
    @IBOutlet weak var totalpaymentLabelreadonly: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        self.userAddress.layer.cornerRadius = 5.0
        self.userAddress.clipsToBounds = true
        
        self.totalAmount.layer.cornerRadius = 5.0
        self.totalAmount.clipsToBounds = true
        
        self.totalpaymentLabelreadonly.layer.cornerRadius = 5.0
        self.totalpaymentLabelreadonly.clipsToBounds = true
        
        self.modePayment.layer.cornerRadius = 5.0
        self.modePayment.clipsToBounds = true
        
        
        modePayment.text = "Mode Of Payment                  CashOnDelivery"
        
    
    }
    
    
    
    
    @IBAction func payAction(sender: UIButton) {
        
        
        
    }
    

    

}
