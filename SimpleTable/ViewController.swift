//
//  ViewController.swift
//  SimpleTable
//
//  Created by John Lahut on 7/21/16.
//  Copyright © 2016 John Lahut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend",
                           "Homei",
                           "Teakha",
                           "Cafe Loisl",
                           "Petite Oyster",
                           "For Kee Restaurant",
                           "Po's Atelier",
                           "Bourke Street Bakery",
                           "Haigh's Chocolate",
                           "Palomino Espresso",
                           "Upstate",
                           "Traif",
                           "Graham Avenue Meats And Deli",
                           "Waffle & Wolf",
                           "Five Leaves",
                           "Cafe Lore",
                           "Confessional",
                           "Barrafina",
                           "Donostia",
                           "Royal Oak",
                           "CASK Pub and Kitchen"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restaurantNames.count;
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        var imgname = cell.textLabel?.text
        
        imgname! = imgname!.stringByReplacingOccurrencesOfString(" ",
            withString: "").stringByReplacingOccurrencesOfString("&",
            withString: "").stringByReplacingOccurrencesOfString("'", withString: "").localizedLowercaseString
        
        cell.imageView?.image = UIImage(named: imgname!)
        
        return cell
        
    }


}

