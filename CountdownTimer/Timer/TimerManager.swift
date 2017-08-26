//
//  TimerManager.swift
//  PicScramble
//
//  Created by Sanju Naik on 6/3/17.
//  Copyright © 2017 Sanju. All rights reserved.
//

import UIKit

class TimerManager: NSObject {

    static var timer: Timer?
    static private var seconds = 0
    static var timeString: ((_ value: String?, _ ends: Bool) -> Void)?
    
    static func start(withSeconds: Int) -> Void {
        seconds = withSeconds
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(TimerManager.update), userInfo: nil, repeats: true)
    }
    
    static func update() -> Void {
        if seconds == 0 {
            timer?.invalidate()
            timeString?(nil,true)
        } else {
            seconds -= 1
            let value = getString(from: TimeInterval(seconds))
            timeString?(value,false)
        }
    }
    
    static private func getString(from time: TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hours,minutes,seconds)
    }

    static func destroy() -> Void {
        timer?.invalidate()
        timer = nil
    }
    
}
