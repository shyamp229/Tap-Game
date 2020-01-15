//
//  ViewController.swift
//  Tap Game
//
//  Created by Shyam K Patel on 1/14/20.
//  Copyright © 2020 Shyam K Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!

    var playerOneTapCount = 0
    var playerTwoTapCount = 0
    var isGameStarted = false


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func player1DidPress(_ sender: Any) {
        playerOneTapCount += 1
        updateUI()
    }

    @IBAction func player2DidPress(_ sender: Any) {
        playerTwoTapCount += 1
        updateUI()
    }

    func updateUI() {
        if isGameStarted {
            player1Label.text = "Player 1 Score: \(playerOneTapCount)"
            player2Label.text = "Player 2 Score: \(playerTwoTapCount)"
        }
    }

    @IBAction func startWasPressed(_ sender: UIButton) {
        sender.isEnabled = false

        isGameStarted = true
        playerOneTapCount = 0
        playerTwoTapCount = 0
        
        let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
            sender.isEnabled = true
            self.isGameStarted = false
            
        }
        
    }

}
