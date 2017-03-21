//
//  METableViewController.swift
//  shopeemy
//
//  Created by iColson on 21/02/2017.
//  Copyright © 2017 Colson. All rights reserved.
//

import UIKit

class METableViewController: UITableViewController {
    
    @IBOutlet weak var meTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toLogin(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate! as! AppDelegate
        
        let initialViewController = self.storyboard!.instantiateViewController(withIdentifier: "loginpage")
        appDelegate.window?.rootViewController = initialViewController
        appDelegate.window?.makeKeyAndVisible()
    
    
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let subviews = cell.subviews
        if subviews.count >= 3 {
            for subview in subviews {
                if subview != cell.contentView {
                    subview.removeFromSuperview()
                    break
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)

            return cell
        
        }
        else if indexPath.row == 1 {
            let selectCell = tableView.dequeueReusableCell(withIdentifier: "SelectionCell", for: indexPath)
            
            return selectCell
            
        } else {
                
                let helps = tableView.dequeueReusableCell(withIdentifier: "Helps", for: indexPath)
            
                return helps
            
            }
        

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            
                return 187
            
        } else if indexPath.row == 1 {
            
                return 65
        
        } else if indexPath.row == 2 {
            
            return 40
            
        } else {
            
            
            return 0
            
        }
        
        
    }
 
}

extension CALayer {
    var borderUIColor: UIColor {
        set {
            self.borderColor = newValue.cgColor
        }
        
        get {
            return UIColor(cgColor: self.borderColor!)
        }
    }
}

