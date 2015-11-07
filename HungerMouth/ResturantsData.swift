//
//  ResturantsData.swift
//  HungerMouth
//
//  Created by Raja Ayyan on 07/11/15.
//  Copyright © 2015 kgrow. All rights reserved.
//

import Foundation

class ResturantsData{
    
    var name: String? //Name of the resturant
    var resturant: Resturant
    var resturantMenus: [ResturantMenu]
    
    init(name: String, includedResturant: Resturant, includedMenus: [ResturantMenu])
    {
        self.name = name
        self.resturant = includedResturant
        self.resturantMenus = includedMenus
    }
    
    
    class func ResturantData() -> [ResturantsData]
    {
        return [self.getMeghanaResturant(),self.getMeghanaResturant2(),self.getMeghanaResturant3(),self.getMeghanaResturant4(),self.getMeghanaResturant5(),self.getMeghanaResturant6(),]
    }
    
    //Hardcoding of data
    
    private class func getMeghanaResturant() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Meghana", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r1.png")
        
        
        return ResturantsData(name: "Meghana", includedResturant: resturant, includedMenus: resturantMenu)
        
    }
    
    
    
    private class func getMeghanaResturant1() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Shanmukh Resturant", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r2.png")
        
        
        return ResturantsData(name: "Shanmukh Resturant", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
    private class func getMeghanaResturant2() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Nandhini", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r3.png")
        
        
        return ResturantsData(name: "Nandhini", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
    private class func getMeghanaResturant3() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Absolute Barbeque", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r4.png")
        
        
        return ResturantsData(name: "Absolute Barbeque", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
    private class func getMeghanaResturant4() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Jimmy Bear", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r5.png")
        
        
        return ResturantsData(name: "Jimmy Bear", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
    private class func getMeghanaResturant5() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Sports Bar", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r6.png")
        
        
        return ResturantsData(name: "Sports Bar", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
    private class func getMeghanaResturant6() -> ResturantsData{
        
        var resturantMenu = [ResturantMenu]()
        
        resturantMenu.append(ResturantMenu(menuName: "Veg Manchurian", menuImage: "d1.png", menuPrice: 180))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Tikka", menuImage: "d2.png", menuPrice: 230))
        resturantMenu.append(ResturantMenu(menuName: "Chicken kadai", menuImage: "d3.png", menuPrice: 120))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Butter", menuImage: "d4.png", menuPrice: 200))
        resturantMenu.append(ResturantMenu(menuName: "Mutton Masala", menuImage: "d5.png", menuPrice: 320))
        resturantMenu.append(ResturantMenu(menuName: "Andhra Gongura chicken", menuImage: "d6.png", menuPrice: 140))
        resturantMenu.append(ResturantMenu(menuName: "Veg Thali", menuImage: "d7.png", menuPrice: 160))
        resturantMenu.append(ResturantMenu(menuName: "Chicken Angara", menuImage: "d8.png", menuPrice: 300))
        resturantMenu.append(ResturantMenu(menuName: "Meghana Kadai", menuImage: "d9.png", menuPrice: 100))
        resturantMenu.append(ResturantMenu(menuName: "Meghana 555", menuImage: "d10.png", menuPrice: 210))
        resturantMenu.append(ResturantMenu(menuName: "Gobi Manchurian", menuImage: "d11.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Fry", menuImage: "d12.png", menuPrice: 110))
        resturantMenu.append(ResturantMenu(menuName: "Mushroom Biryani", menuImage: "d13.png", menuPrice: 220))
        resturantMenu.append(ResturantMenu(menuName: "Butter Manchurian", menuImage: "d14.png", menuPrice: 130))
        
        var resturant: Resturant
        
        resturant = Resturant(name: "Purple Haze", address: "4th A Cross, Shiridi Sai Nagar, Manjunatha Layout, Kundlahalligate, OuterringRoad", imageName: "r7.png")
        
        
        return ResturantsData(name: "Purple Haze", includedResturant: resturant, includedMenus: resturantMenu)
        
    }

    
}
