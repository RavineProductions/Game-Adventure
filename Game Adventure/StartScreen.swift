//
//  StartScreen.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 17/9/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit
class StartScreen: UIViewController {
    print("Testing 123")

    @IBOutlet weak var StartButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        StartButton.alpha = 0
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, delay: 0.0, options: .curveEaseOut, animations: {
            self.StartButton.alpha = 1
        })
    }
    
}
