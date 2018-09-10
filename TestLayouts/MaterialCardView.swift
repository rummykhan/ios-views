//
//  MaterialCardView.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/8/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import Foundation
import UIKit

public class MaterialCardView: UIView {
    
    open var cornerRadius: CGFloat = 4
    
    open var shadowOffsetWidth: CGFloat = 0
    open var shadowOffsetHeight: CGFloat = 0.5
    open var shadowColor: UIColor? = UIColor.black
    open var shadowOpacity: Float = 0.1
    
    override open func layoutSubviews() {
        
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = true
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
    
}
