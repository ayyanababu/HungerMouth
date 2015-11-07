//
//  UserDetails.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit


protocol UserDetailsProtocol{
    
    func sucessFullyOrdered()
}

class UserDetails: UIViewController, UIAlertViewDelegate {
    
    
    struct ScreenConstants{
        static var MODE_OF_PAYMENT: String = "Mode Of Payment                  CashOnDelivery"
        static var THANK_YOU: String = "Thank You"
        static var OK = "Ok"
        
    }
    

    @IBOutlet weak var userAddress: UITextView!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var modePayment: UILabel!
    @IBOutlet weak var totalpaymentLabelreadonly: UILabel!
    
    var delegate: UserDetailsProtocol?
    
    var sumOfAmmount: Int = 0
    
    
    //MARK: LifeCycleMethods
    
    
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
        
        
        modePayment.text = ScreenConstants.MODE_OF_PAYMENT
        
        self.totalAmount.text = String(sumOfAmmount)
    
    }
    
    //MARK: ActionMethods
    
    
    @IBAction func payAction(sender: UIButton) {
        
        let alert = UIAlertController(title: ScreenConstants.THANK_YOU, message: "Your Order Of Amount \(sumOfAmmount) is Sucessfull, And will be Delivered with in 45 mins", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: ScreenConstants.OK, style: UIAlertActionStyle.Default, handler: dismissAlertController))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    func dismissAlertController(alert: UIAlertAction){
        delegate?.sucessFullyOrdered()
    }

    

}
