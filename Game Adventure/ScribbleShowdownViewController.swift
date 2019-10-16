//
//  ScribbleShowdownViewController.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 23/9/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit
class ScribbleShowdownViewController: UIViewController {
    @IBOutlet weak var canvasView1: CanvasView!
    @IBOutlet weak var canvasView2: CanvasView!
    

    
    
    
    override func viewDidLoad() {
          super.viewDidLoad()
        
    }
    
    @IBAction func clearCanvas1(_ sender: Any) {
        canvasView1.clearCanvas()
    }
    @IBAction func clearCanvas2(_ sender: Any) {
        canvasView2.clearCanvas()
    }
    
}


