
//
//  HELPTableViewController.swift
//  shopeemy
//
//  Created by iColson on 22/02/2017.
//  Copyright © 2017 Colson. All rights reserved.
//

import UIKit

class HELPTableViewController: UITableViewController {

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
    @IBAction func backButton(_ sender: UIBarButtonItem) {
    
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func paymentButton(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "hq", for: indexPath)
            return cell
            
        } else if indexPath.row == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Help1", for: indexPath)
            return cell
            
        } else if indexPath.row == 2 {
            
            let cellfirst = tableView.dequeueReusableCell(withIdentifier: "Help2", for: indexPath)
            return cellfirst
            
        } else if indexPath.row == 3 {
            
            let cellsecond = tableView.dequeueReusableCell(withIdentifier: "Help3", for: indexPath)
            return cellsecond
            
        } else if indexPath.row == 4 {
            
            let cellfour = tableView.dequeueReusableCell(withIdentifier: "Help4", for: indexPath)
            return cellfour
            
        } else if indexPath.row == 5 {
        
        
            let cellfive = tableView.dequeueReusableCell(withIdentifier: "Help5", for: indexPath)
            return cellfive
            
        } else if indexPath.row == 6 {
        
            let category = tableView.dequeueReusableCell(withIdentifier: "categories", for: indexPath)
            return category
            
        } else {
            
            let allinone = tableView.dequeueReusableCell(withIdentifier: "allinone", for: indexPath)
            return allinone
            
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            
            return 45
            
        } else if indexPath.row == 1 {
            
            return 45
            
        } else if indexPath.row == 2 {
            
            return 45
            
        } else if indexPath.row == 3 {
            
            return 45
            
        } else if indexPath.row == 4 {
            
            return 45
            
        } else if indexPath.row == 5 {
            
            return 60
            
        } else if indexPath.row == 6 {
            
            return 45
                
        } else if indexPath.row == 7 {
            
            return 170
        } else {
            
            return 0
            
        }
        
        
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
