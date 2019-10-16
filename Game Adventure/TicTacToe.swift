//
//  TicTacToe.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 5/10/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit

class TicTacToe: UIViewController {
    var cell1pressed = false
    var cell2pressed = false
    var cell3pressed = false
    var player1Turn = true
    @IBOutlet weak var buttonCell1: UIButton!
    @IBOutlet weak var buttonCell2: UIButton!
    @IBOutlet weak var buttonCell3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func cell1Pressed(_ sender: UIButton) {
        Cell1Pressed()
    }
    @IBAction func cell2Pressed(_ sender: UIButton) {
        Cell2Pressed()
    }
    @IBAction func cell3pressed(_ sender: Any) {
        Cell3Pressed()
    }
    
    func Cell1Pressed() {
        if cell1pressed == false {
            cell1pressed = true
            if player1Turn == true {
                print("Player 1")
                player1Turn = false
                let image1 = UIImage(named: "RedCross") as! UIImage
                buttonCell1.setImage(image1, for: UIControl.State.normal)
            } else {
                print("Player 2")
                player1Turn = true
                let image1 = UIImage(named: "GreenCircle") as! UIImage
                buttonCell1.setImage(image1, for: UIControl.State.normal)
            }
        }
    }
    func Cell2Pressed() {
        if cell2pressed == false {
            cell2pressed = true
            if player1Turn == true {
                print("Player 1")
                player1Turn = false
                let image2 = UIImage(named: "RedCross") as! UIImage
                buttonCell2.setImage(image2, for: UIControl.State.normal)
            } else {
                print("Player 2")
                player1Turn = true
                let image2 = UIImage(named: "GreenCircle") as! UIImage
                buttonCell2.setImage(image2, for: UIControl.State.normal)
            }
            
        }

    }
    func Cell3Pressed() {
        if cell3pressed == false {
            cell3pressed = true
            if player1Turn == true {
                print("Player 1")
                player1Turn = false
                let image3 = UIImage(named: "RedCross") as! UIImage
                buttonCell3.setImage(image3, for: UIControl.State.normal)
            } else {
                print("Player 2")
                player1Turn = true
                let image3 = UIImage(named: "GreenCircle") as! UIImage
                buttonCell3.setImage(image3, for: UIControl.State.normal)
            }
        }
    }
}
