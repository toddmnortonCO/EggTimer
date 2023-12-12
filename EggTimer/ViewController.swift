//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium":7, "Hard": 12]
    var eggCountdown = 0
    var secondsRemaining = 1
    
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        titleLabel.text = "How do you like your eggs?"
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        eggCountdown = result * secondsRemaining
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.eggCountdown > 0 {
                print ("\(self.eggCountdown) seconds.")
                self.eggCountdown -= 1
            } else {
                self.timer.invalidate()
                self.titleLabel.text = "EGGS ARE DONE!"
            }
            
            
        }
    }
}
