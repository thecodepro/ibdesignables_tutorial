//
//  CustomView.swift
//  ibdesignables_tutorial
//
//  Created by Zephaniah Cohen on 3/12/17.
//  Copyright © 2017 Zephaniah Cohen. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomView : UIView {
    
    @IBInspectable var viewColor : UIColor = UIColor.white
    @IBInspectable var viewBorderWidth : CGFloat = 0
    @IBInspectable var viewBorderColor : UIColor = UIColor.clear
    @IBInspectable var viewCornerRadius : CGFloat = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        styleView()
    }
    
    override func prepareForInterfaceBuilder() {
        styleView()
    }
    
    func styleView() {
        
        backgroundColor = viewColor
        layer.borderWidth = viewBorderWidth
        layer.borderColor = viewBorderColor.cgColor
        layer.cornerRadius = viewCornerRadius
    }
}
