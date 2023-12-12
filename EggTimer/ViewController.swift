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
    let seconds = 60
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        let eggCountdown = result * seconds
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.eggCountdown > 0 {
                print("\(self.eggCountdown) seconds remaining.")
                self.eggCountdown -= 1
            } else {
                print("Eggs are done!")
            }
        }
        
        }
}
    

