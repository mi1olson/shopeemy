//
//  BuyTableViewController.swift
//  shopeemy
//
//  Created by iColson on 22/02/2017.
//  Copyright © 2017 Colson. All rights reserved.
//

import UIKit

class BuyTableViewController_old: UITableViewController, JWAutoScrollViewDelegate {
    

    

    let autoScrollView:JWAutoScrollView = JWAutoScrollView()
    
    let images = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        autoScrollView.frame = CGRect(x: 0, y: 64, width: view.bounds.width, height: 200)
        autoScrollView.delegate = self
        view.addSubview(autoScrollView)
        
    }


    //每一次自动滚动停止
    func autoScrollView(autoScrollView: JWAutoScrollView, didEndAnimationAt itemIndex: Int) {
    }
    
    //返回自动滚动的个数
    func autoScrollViewNumberOfPage() -> Int {
        return 6
    }
    
    //本方法将 每一个item返回，使用者可以通过框架加载图片  也可以直接设置本地图片
    func autoScrollView(autoScrollView: JWAutoScrollView, index: Int, imageButton: JWAutoScrollViewButton) {
        
        imageButton.setImage(UIImage(named: "1.jpg"), for: UIControlState.normal)
        
        
    }
    
    
    //点击选中
    func autoScrollView(autoScrollView: JWAutoScrollView, didSelectedItemAt itemIndex: Int) {
        
    }
    
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0{
            
            let cellone = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath)
            
            return cellone
            
            
        } else if indexPath.row == 1 {
            let celltwo = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath)
            
            return celltwo
            
        } else if indexPath.row == 2 {
            
            let cellthree = tableView.dequeueReusableCell(withIdentifier: "CellThree", for: indexPath)
            
            return cellthree
            
        } else {
            
            let cellthree = tableView.dequeueReusableCell(withIdentifier: "CellThour", for: indexPath)
            
            return cellthree
            
        }
        
    }
    
    
    
    

    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            
            return 200
            
        } else if indexPath.row == 1 {
            
            return 235
            
        } else if indexPath.row == 2 {
            
            return 100
            
        } else if indexPath.row == 3 {
            
            return 100
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
