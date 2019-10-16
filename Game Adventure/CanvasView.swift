//
//  CanvasView.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 23/9/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var lineColour : UIColor!
    var lineWidth : CGFloat!
    var path : UIBezierPath!
    var touchPoint : CGPoint!
    var startPoint : CGPoint!
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        lineColour = UIColor.white
        lineWidth = 6
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startPoint = touch?.location(in: self)
        

    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        
        path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        startPoint = touchPoint
        
        drawShapeLayer()
    }
//draw line
    func drawShapeLayer() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColour.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
  //erase all
    func clearCanvas() {
    path.removeAllPoints()
    self.layer.sublayers = nil
    self.setNeedsDisplay()
    }
    
    
    
    
}
