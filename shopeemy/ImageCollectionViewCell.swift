//
//  ImageCollectionViewCell.swift
//  Example
//
//  Created by hiroyuki yoshida on 2016/01/04.
//  Copyright © 2016年 hiroyuki yoshida. All rights reserved.
//

import UIKit

final class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    static let identifier = "ImageCollectionViewCell"
    static let nib = UINib(nibName: "ImageCollectionViewCell", bundle: nil)
    
    func configure(indexPath: IndexPath) {
    
        let image = [UIImage(named: "Home_Banner_5"), UIImage(named: "bmw_banner"), UIImage(named: "banner01"),UIImage(named: "Home_Banner_5")]
        self.imageView.image = image[indexPath.row]
        setNeedsLayout()
        layoutIfNeeded()
    }
    
    
    func configureTwo(indexPath: IndexPath) {
        let image = UIImage(named: String(indexPath.item))
        imageView.image = image
        setNeedsLayout()
        layoutIfNeeded()
    }
}
