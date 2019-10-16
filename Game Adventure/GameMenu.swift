//
//  GameMenu.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 1/10/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit

class GameMenu: UIViewController {

    @IBOutlet weak var SSinfoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SSinfoView.alpha = 0

    }
var SSbuttonPressed = false
    @IBAction func SSInfoButtonPressed(_ sender: Any) {
        if SSbuttonPressed == false {
            SSbuttonPressed = true
            print(SSbuttonPressed)
            animateinSSView()
        } else {
            SSbuttonPressed = false
            print(SSbuttonPressed)
            animateOutSSView()
            
        }
        
    }
    func animateinSSView() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.SSinfoView.alpha = 1
        })
            
     }
    func animateOutSSView() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.SSinfoView.alpha = 0
            })
        
      }
    
}
