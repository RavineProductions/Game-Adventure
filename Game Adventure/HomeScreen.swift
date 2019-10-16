//
//  HomeScreen.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 17/9/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//


import UIKit

class HomeScreen: UIViewController {

    @IBOutlet weak var backStartScreen: BorderButton!
    @IBOutlet weak var GameMenu: BorderButton!
    @IBOutlet weak var SettingsPicButton: UIButton!
    @IBOutlet weak var SettingsButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // makes stuff invisible
        backStartScreen.alpha = 0
        GameMenu.alpha = 0
        SettingsPicButton.alpha = 0
        SettingsButton.alpha = 0
       

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

       // stuff appears w/ animations
              UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                  self.backStartScreen.alpha = 1
                  self.GameMenu.alpha = 1
                  self.SettingsButton.alpha = 1
                  self.SettingsPicButton.alpha = 1
        
              })
        }

    }


