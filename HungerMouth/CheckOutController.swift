//
//  CheckOutController.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class CheckOutController: UITableViewController, UserDetailsProtocol {
    
    struct storyBoardConstatns{
        static var CELL_IDENTIFIER = "checkoutcell"
        static var PAY_SEGUE = "payoutsegue"
    }
    
    var actualCheckOutData: FinalDataToPay?
    var finalData: FinalDataToPay?
    var totalAmount: Int?
    var cancleOrderTitle: String?
    
    @IBOutlet weak var cancleOrder: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateTotalPrice()
        self.navigationItem.title = "CheckOut"
        self.cancleOrder.setTitle(self.cancleOrderTitle, forState: .Normal)

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
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
        
        let checkoutdata = CheckOutData(resturantName: "", address: "", menuName: "Total Price", quantity: totalQuantity, price: totalPrice)
        self.totalAmount = totalPrice
        finalData?.checkOutData.append(checkoutdata)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == storyBoardConstatns.PAY_SEGUE{
            let navController = segue.destinationViewController as? UINavigationController
            let summaryController = navController?.topViewController as? UserDetails
            summaryController?.delegate = self
            summaryController!.sumOfAmmount = self.totalAmount!
        }
    }
    
    @IBAction func cancleOrReorder(sender: UIButton) {
        
        dismissViewControllerAnimated(false, completion: nil)
    }
    

   //MARK: UserControllerDelegate
    func sucessFullyOrdered() {
        
        self.cancleOrderTitle = "ReOrder"

        dismissViewControllerAnimated(false, completion: nil)
        
    }
}
