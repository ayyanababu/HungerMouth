//
//  ResturantViewController.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 06/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import UIKit

class ResturantViewController: UITableViewController, UserDetailsProtocol {
    
    
    struct StoryBoardConstants {
        static var CELL_IDENTIFIER = "resturantcell"
        static var MENU_SEGUE = "resturantemenusegue"
    }
    
    
    //lazy initialization of variable when ever it is used
    var resturantData : [ResturantsData] = ResturantsData.ResturantData()
    
    
    
    
    //MARK: ViewController LifeCycleMethods
    override func viewDidLoad() {
        super.viewDidLoad()
        //resturantData = ResturantsData.ResturantData()
    }
    
    
    override func viewWillAppear(animated: Bool) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSoruce Methods
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(StoryBoardConstants.CELL_IDENTIFIER, forIndexPath: indexPath) as? ResturantTableViewCell
        
        let resturantsData =  resturantData[indexPath.row]
        cell!.configureCellWithResturant(resturantsData.resturant)
        
        return cell!
    }
    

  
    
    
    //MARK: SegueMethods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == StoryBoardConstants.MENU_SEGUE
        {
            //let navController = segue.destinationViewController as? UINavigationController
            //let menucontroller = navController?.topViewController as? MenuController
            
            let menucontroller = segue.destinationViewController as? MenuController
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) {
                    let resturant = resturantData[indexPath.row]
                     menucontroller!.resturantName = resturant.resturant.name
                     menucontroller!.resturantMenu = resturant.resturantMenus
                     menucontroller!.resturantAddress = resturant.resturant.address
                     menucontroller?.imageName = resturant.resturant.image
            }
            
           
            
            
        }
    }
    
    
    
    //MARK: - UserDetailsProtocol
    
    func sucessFullyOrdered() {
        
    }
    
}
