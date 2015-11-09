//
//  CheckOutController.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class CheckOutController: UITableViewController, UserDetailsProtocol {
    
    
    //MARK:- ConstantsAndVariables
    
    struct storyBoardConstatns{
        static var CELL_IDENTIFIER = "checkoutcell"
        static var PAY_SEGUE = "payoutsegue"
        static var NAV_TITLE = "CheckOut"
        static var TOTAL_PRICE = "Total Price"
        static var RE_ORDER = "Reorder"
    }
    
    var actualCheckOutData: FinalDataToPay?
    var finalData: FinalDataToPay?
    var totalAmount: Int?
    var cancleOrderTitle: String?
    
    @IBOutlet weak var cancleOrder: UIButton!

    
    //MARK: LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateTotalPrice()
        self.navigationItem.title = storyBoardConstatns.NAV_TITLE
        self.cancleOrder.setTitle(self.cancleOrderTitle, forState: .Normal)

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    //MARK: HelperMethods
    
    func calculateTotalPrice(){
        let priceArray = actualCheckOutData?.checkOutData
        
        var totalPrice : Int = 0
        var totalQuantity: Int = 0
        
        finalData = FinalDataToPay()
        for checkOutData in priceArray!{
            
            let perItemPrice = checkOutData.price * checkOutData.quantity
            totalPrice += perItemPrice
            totalQuantity += checkOutData.quantity
            let checkoutdata = CheckOutData(resturantName: checkOutData.resturantName, address: checkOutData.resturantAddress, menuName: checkOutData.menuName, quantity: checkOutData.quantity, price: perItemPrice)
            
            
            finalData?.checkOutData.append(checkoutdata)
        }
        
        let checkoutdata = CheckOutData(resturantName: "", address: "", menuName: storyBoardConstatns.TOTAL_PRICE, quantity: totalQuantity, price: totalPrice)
        self.totalAmount = totalPrice
        finalData?.checkOutData.append(checkoutdata)
    }

 
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (finalData?.checkOutData.count)!
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(storyBoardConstatns.CELL_IDENTIFIER, forIndexPath: indexPath) as? CheckOutCellView
        
        let checkOutData = finalData?.checkOutData[indexPath.row]

        cell?.configureUI(checkOutData!)
        
        if ((finalData?.checkOutData.count)! - 1) == indexPath.row{
            cell?.backgroundColor = UIColor(red: 131/255, green: 139/255, blue: 199/255, alpha: 0.5)
            
        }

        return cell!
    }
    
    
    //MARK: SegueMethods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == storyBoardConstatns.PAY_SEGUE{
            let navController = segue.destinationViewController as? UINavigationController
            let summaryController = navController?.topViewController as? UserDetails
            summaryController?.delegate = self
            summaryController!.sumOfAmmount = self.totalAmount!
        }
    }
    
    @IBAction func cancleOrReorder(sender: UIButton) {
        
        
        let alert = UIAlertController(title: "Please Notify", message: "If you Click on Cancle all your previous orders will reseted to defaults sorry", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: dismissAlertController))
        alert.addAction(UIAlertAction(title: "Cancle", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    
    func dismissAlertController(alert: UIAlertAction){
        dismissViewControllerAnimated(false, completion: nil)
    }
        
    

   //MARK: UserControllerDelegate
    func sucessFullyOrdered() {
        
        self.cancleOrderTitle = storyBoardConstatns.RE_ORDER

        dismissViewControllerAnimated(false, completion: nil)
        
    }
}
