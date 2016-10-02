//
//  Custom2TableViewCell.swift
//  TableViewPassDataM1
//
//  Created by Jakkawad Chaiplee on 10/2/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class Custom2TableViewCell: UITableViewCell {

    
    var dataArray = [String]()
    
    @IBOutlet weak var collectionView:UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


extension Custom2TableViewCell {
    
    func setCollectionViewDataSourceDelegate<D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>(dataSourceDelegate: D, forRow row: Int) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
        
    }
    
    
}
