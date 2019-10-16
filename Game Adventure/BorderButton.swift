//
//  BorderButton.swift
//  Game Adventure Prototype
//
//  Created by Wei-En Chang on 12/9/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit
@IBDesignable
class BorderButton: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColour : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColour.cgColor
        }
    }
}
