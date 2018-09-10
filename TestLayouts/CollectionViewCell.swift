//
//  CollectionViewCell.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/10/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier : String = "CollectionViewCell"
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var myDescription: UILabel!
    
}
