//
//  MenuController.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit


class MenuController: UITableViewController {
    
    
    struct StoryBoardSegue {
        static var CHECKOUT_SEGUE = "checkoutsegue"
    }
    var resturantName: String?
    var resturantAddress: String?
    var resturantMenu = [ResturantMenu]()
    var finalData  = FinalDataToPay()
    var imageName: UIImage?
    
    @IBOutlet weak var resturantNameLabel: UILabel!
    @IBOutlet weak var resturantImage: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Menu"
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.grayColor()
        self.navigationItem.rightBarButtonItem?.enabled = false
        self.resturantNameLabel.text = resturantName
        self.resturantImage.image = imageName
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
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
        let cell = tableView.dequeueReusableCellWithIdentifier("menucell", forIndexPath: indexPath) as? MenuTableViewCell
        
        let eachMenu = resturantMenu[indexPath.row]
        cell?.menuQuantity.text = "0"
        
        cell?.configureUI(eachMenu)
        return cell!
    }
    
    
    @IBAction func menuButton(sender: UIButton) {
        
        if let cell = sender.superview?.superview as? MenuTableViewCell{
            
            let menuname = cell.menuName.text
            let price = Int(cell.menuPrice.text!)
            let quantity = Int(cell.menuQuantity.text!)
            let resturantname = self.resturantName
            let resturantaddress = self.resturantAddress
            
            if quantity != 0{
                
                self.navigationItem.rightBarButtonItem?.enabled = true
                let checkoutdata = CheckOutData(resturantName: resturantname!, address: resturantaddress!, menuName: menuname!, quantity: quantity!, price: price!)
                self.navigationItem.rightBarButtonItem?.tintColor = UIColor.whiteColor()
                self.finalData.checkOutData.append(checkoutdata)
                
            }
//            else{
//                self.navigationItem.rightBarButtonItem?.tintColor = UIColor.grayColor()
//            }
            
        }
        
    }
    
    //MARK: SegueMethod
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == StoryBoardSegue.CHECKOUT_SEGUE
        {
            let navController = segue.destinationViewController as? UINavigationController
            let checkoutController = navController?.topViewController as? CheckOutController
            checkoutController?.actualCheckOutData = self.finalData
            checkoutController?.cancleOrderTitle = "Cancle"
            
        }
    }
    
    
    
}
