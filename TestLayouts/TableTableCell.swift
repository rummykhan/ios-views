//
//  TableCell.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/10/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import UIKit

class TableTableCell : UITableViewCell
{
    static let reuseIdentifier = "TableTableCell"
    
    @IBOutlet weak var technologyIcon: UIImageView!
    
    @IBOutlet weak var technologyName: UILabel!
    
    @IBOutlet weak var technologyDescription: UILabel!
    
    @IBOutlet weak var materialView: MaterialCardView!
    
    internal var aspectConstraint : NSLayoutConstraint? {
        didSet {
            if oldValue != nil {
                technologyIcon.removeConstraint(oldValue!)
            }
            if aspectConstraint != nil {
                technologyIcon.addConstraint(aspectConstraint!)
            }
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        aspectConstraint = nil
    }
    
    func setCustomImage(image : UIImage) {
        
        let aspect = image.size.width / image.size.height
        
        let constraint = NSLayoutConstraint(item: technologyIcon, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: technologyIcon, attribute: NSLayoutAttribute.height, multiplier: aspect, constant: 0.0)
        constraint.priority = UILayoutPriority.defaultHigh
        
        aspectConstraint = constraint
        
        technologyIcon.image = image
    }
}
