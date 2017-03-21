//
//  FeedTableViewController.swift
//  shopeemy
//
//  Created by iColson on 02/03/2017.
//  Copyright © 2017 Colson. All rights reserved.
//

import UIKit

final class FeedTableViewController: UIViewController {

    @IBOutlet var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
 
}


extension FeedTableViewController: UITableViewDataSource, UITableViewDelegate {
    
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
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        switch section {
        case 0, 1, 2, 3, 4: return 1
        default: return 0
        }
        
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellThree", for: indexPath)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTour", for: indexPath)
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: CellFive.identifier, for: indexPath) as! CellFive
            return cell
        default:
            return UITableViewCell()
            
        }
        
    }
    
     func tableView(_ tableVew: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 90
        case 1, 2, 3: return 50
        case 4: return 300
        default: return 0
        }
    }
}


class FeedTableViewCell: UICollectionViewCell {
    
    @IBOutlet weak var feedImages: UIImageView!
  
}


final class CellFive: UITableViewCell {
    
    static let identifier = "CellFive"
    
    var feedImage = [UIImage(named: "shopee_1"),UIImage(named: "shopee_2"),UIImage(named: "shopee_3")]
    
    @IBOutlet var feedCollectionViewOne: UICollectionView!

}

extension CellFive: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feedImage.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCollectionView", for: indexPath) as! FeedTableViewCell
        cell.feedImages.image = feedImage[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        print("didSelectItemAt: \(indexPath.item)")
        
        
    }
    
}

