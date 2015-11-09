//
//  MenuController.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit


class MenuController: UITableViewController, UITextFieldDelegate {
    
    
    
    //MARK:- ConstantsAndVariables
    
    struct ScreenConstants {
        static var CHECKOUT_SEGUE = "checkoutsegue"
        static var CELL_IDENTIFIER = "menucell"
        static var CANCLE = "Cancle"
        static var NAV_TITLE = "Menu"
    }
    var resturantName: String?
    var resturantAddress: String?
    var resturantMenu = [ResturantMenu]()
    var finalData  = FinalDataToPay()
    var imageName: UIImage?
    
    @IBOutlet weak var resturantNameLabel: UILabel!
    @IBOutlet weak var resturantImage: UIImageView!
    
    
    //MARK:- ViewControllerLifeCycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = ScreenConstants.NAV_TITLE
        self.resturantNameLabel.text = resturantName
        self.resturantImage.image = imageName
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.finalData.checkOutData.removeAll()
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.grayColor()
        self.navigationItem.rightBarButtonItem?.enabled = false
        self.tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = resturantMenu.count
        if count > 0{
            return count
        }else{
            return 10
        }
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ScreenConstants.CELL_IDENTIFIER, forIndexPath: indexPath) as? MenuTableViewCell
        
        let eachMenu = resturantMenu[indexPath.row]
        //cell?.menuQuantity.text = "0"
        
        cell?.configureUI(eachMenu)
        return cell!
    }
    
    
    
    //MARK: AddToCartMethod
    @IBAction func menuButton(sender: UIButton) {
        
        if let cell = sender.superview?.superview as? MenuTableViewCell{
            
            let menuname = cell.menuName.text
            let price = Int(cell.menuPrice.text!)
            let quantity = Int(cell.menuQuantity.text!)
            let resturantname = self.resturantName
            let resturantaddress = self.resturantAddress
            
            if quantity != 0{
                
                var elementFound = false
                self.navigationItem.rightBarButtonItem?.enabled = true
                self.navigationItem.rightBarButtonItem?.tintColor = UIColor.whiteColor()
                if finalData.checkOutData.count == 0{
                    let checkoutdata = CheckOutData(resturantName: resturantname!, address: resturantaddress!, menuName: menuname!, quantity: quantity!, price: price!)
                    self.finalData.checkOutData.append(checkoutdata)
                    elementFound = true
                }
                
                
                
                
                if !elementFound {
                    for var i=0;i < finalData.checkOutData.count ;i++ {
                        let checkout = finalData.checkOutData[i]
                        if (checkout.menuName == menuname) && (checkout.price == price){
                            let newQuantity = checkout.quantity + quantity!
                            let checkoutdata = CheckOutData(resturantName: resturantname!, address: resturantaddress!, menuName: menuname!, quantity: newQuantity, price: price!)
                            
                            self.finalData.checkOutData[i] = checkoutdata
                            elementFound = true
                            break
                        }
                        
                    }
                }
                
                
                if !elementFound{
                    let checkoutdata = CheckOutData(resturantName: resturantname!, address: resturantaddress!, menuName: menuname!, quantity: quantity!, price: price!)
                    self.finalData.checkOutData.append(checkoutdata)
                }
                
                
                
                
                /*  self.navigationItem.rightBarButtonItem?.enabled = true
                let checkoutdata = CheckOutData(resturantName: resturantname!, address: resturantaddress!, menuName: menuname!, quantity: quantity!, price: price!)
                self.navigationItem.rightBarButtonItem?.tintColor = UIColor.whiteColor()
                self.finalData.checkOutData.append(checkoutdata)*/
                
            }
            
            
        }
        
    }
    
    //MARK: SegueMethod
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == ScreenConstants.CHECKOUT_SEGUE
        {
            let navController = segue.destinationViewController as? UINavigationController
            let checkoutController = navController?.topViewController as? CheckOutController
            checkoutController?.actualCheckOutData = self.finalData
            checkoutController?.cancleOrderTitle = ScreenConstants.CANCLE
            
        }
    }
    
    
    //MARK: TextFieldDelegates
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    
}
