//
//  ViewController.swift
//  CountdownTimer
//
//  Created by Sanju Naik on 8/26/17.
//  Copyright © 2017 Sanju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TimerManager.start(withSeconds: 20)
        TimerManager.timeString = { time, ends in
            if ends == false {
                self.timerLabel.text = time
            } else {
                // Perform here the task you want to do after timer finishes.
            }
        }
    }

}

