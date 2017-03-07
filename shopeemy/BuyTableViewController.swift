//
//  Pattern2ViewController.swift
//  Example
//
//  Created by hiroyuki yoshida on 2016/01/04.
//  Copyright © 2016年 hiroyuki yoshida. All rights reserved.
//

import UIKit
import InfiniteCollectionView




// MARK: - UITableViewDataSource, UITableViewDelegate
final class BuyTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
        }
    }



    

}


// MARK: - UITableViewDataSource, UITableViewDelegate
extension BuyTableViewController: UITableViewDataSource, UITableViewDelegate {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0, 1, 2, 3, 4: return 1
        default: return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Infinite0TableViewCell", for: indexPath)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: InfiniteTableViewCell.identifier) as! InfiniteTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: Infinite2TableViewCell.identifier) as! Infinite2TableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: Infinite3TableViewCell.identifier) as! Infinite3TableViewCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: Infinite4TableViewCell.identifier) as! Infinite4TableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 80
        case 1: return 150
        case 2: return 120
        case 3: return 400
        case 4: return 500
        default: return 0
        }
    }
}







final class InfiniteTableViewCell: UITableViewCell {
    static let identifier = "InfiniteTableViewCell"
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NotificationCenter.default.addObserver(self, selector: #selector(InfiniteTableViewCell.rotate(_:)), name: .UIDeviceOrientationDidChange, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: .UIDeviceOrientationDidChange, object: nil)
    }
    @IBOutlet weak var collectionView: InfiniteCollectionView! {
        didSet {
            collectionView.infiniteDataSource = self
            collectionView.infiniteDelegate = self
            collectionView.register(ImageCollectionViewCell.nib, forCellWithReuseIdentifier: ImageCollectionViewCell.identifier)
        }
    }
    @IBOutlet weak var layout: UICollectionViewFlowLayout! {
        didSet {
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 151 )
        }
    }
    @IBOutlet weak var pageControl: UIPageControl! {
        didSet {
            pageControl.numberOfPages = 4
        }
    }
    func rotate(_ notification: Notification) {
        let size = CGSize(width: UIScreen.main.bounds.width, height: 151  )
        layout.itemSize = size
        layout.invalidateLayout()
        collectionView.rotate(notification)
        collectionView.layoutIfNeeded()
        collectionView.setNeedsLayout()
    }
}




// MARK: - InfiniteCollectionViewDataSource, InfiniteCollectionViewDelegate
extension InfiniteTableViewCell: InfiniteCollectionViewDataSource, InfiniteCollectionViewDelegate {
    func number(ofItems collectionView: UICollectionView) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, dequeueForItemAt dequeueIndexPath: IndexPath, cellForItemAt usableIndexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: dequeueIndexPath) as! ImageCollectionViewCell
        cell.configure(indexPath: usableIndexPath)
        return cell
    }
    func scrollView(_ scrollView: UIScrollView, pageIndex: Int) {
        pageControl.currentPage = pageIndex
    }
}




final class Infinite2TableViewCell: UITableViewCell {
    static let identifier = "Infinite2TableViewCell"
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NotificationCenter.default.addObserver(self, selector: #selector(Infinite2TableViewCell.rotate(_:)), name: .UIDeviceOrientationDidChange, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: .UIDeviceOrientationDidChange, object: nil)
    }
    @IBOutlet weak var collectionView: InfiniteCollectionView! {
        didSet {
            collectionView.infiniteDataSource = self
            collectionView.infiniteDelegate = self
            collectionView.register(ImageCollectionViewCell.nib, forCellWithReuseIdentifier: ImageCollectionViewCell.identifier)
        }
    }
    

    
   
}

// MARK: - InfiniteCollectionViewDataSource, InfiniteCollectionViewDelegate
extension Infinite2TableViewCell: InfiniteCollectionViewDataSource, InfiniteCollectionViewDelegate {
    func number(ofItems collectionView: UICollectionView) -> Int {
        
        return 4
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, dequeueForItemAt dequeueIndexPath: IndexPath, cellForItemAt usableIndexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: dequeueIndexPath) as! ImageCollectionViewCell
        cell.configureTwo(indexPath: usableIndexPath)
        return cell
    }
    
    func infiniteCollectionView(_ collectionView: UICollectionView, didSelectItemAt usableIndexPath: IndexPath) {
        print("didSelectItemAt: \(usableIndexPath.item)")
    }
    
    func rotate(_ notification: Notification) {
        collectionView.collectionViewLayout.invalidateLayout()
        collectionView.rotate(notification)
        collectionView.layoutIfNeeded()
        collectionView.setNeedsLayout()
    }
}


final class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgEffect: UIVisualEffectView!
    
}






final class Infinite3TableViewCell: UITableViewCell  {
    
    static let identifier = "Infinite3TableViewCell"
    
    
    var nameArray = ["Women's Clothing", "Beauty & Personl Care", "Women's Bags", "Men's Clothing", "Mobile & Gadgets", "Watches", "Home", "Toys", "Home Appliances"]
    var imgName = [UIImage(named: "girl"), UIImage(named: "makeup"), UIImage(named: "bags"), UIImage(named: "clothing"), UIImage(named: "mobile"), UIImage(named: "watches"), UIImage(named: "living"), UIImage(named: "toys"), UIImage(named: "tools")]
    
    
    
    
}


extension Infinite3TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return nameArray.count
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imgImage.image = imgName[indexPath.row]
        cell.lblName.text! = nameArray[indexPath.row]
        return cell
    }
    
    
}





final class CollectionViewCellTwo : UICollectionViewCell{
    
    
    @IBOutlet weak var imgCellFour: UIImageView!
    
    @IBOutlet weak var lblNameOne: UILabel!
    
    @IBOutlet weak var lblNameTwo: UILabel!
    
}





final class Infinite4TableViewCell: UITableViewCell {
    
    static let identifier = "Infinite4TableViewCell"
    
    var nameItem = ["Testing 1-1", "Testing 1-2", "Testing 1-3", "Testing 1-4"]
    var imgName = [UIImage(named: "0"), UIImage(named: "3") , UIImage(named: "2"), UIImage(named: "1")]
    var itemPrice = ["RM 10.00", "RM 19.99", "RM 15.99", "RM 12"]
    

    
    
    @IBOutlet var collectionViewOne: UICollectionView!
    

}


extension Infinite4TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    

    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return nameItem.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCellTwo", for: indexPath) as! CollectionViewCellTwo
        cell.imgCellFour.image = imgName[indexPath.row]
        cell.lblNameOne.text! = nameItem[indexPath.row]
        cell.lblNameTwo.text! = itemPrice[indexPath.row]
        return cell
    }
    
    
    
}









