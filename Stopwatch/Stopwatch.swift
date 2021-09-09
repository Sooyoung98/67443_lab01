//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Sooyoung Kim on 07/09/2021.
//  Copyright © 2021 Sooyoung. All rights reserved.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate!

  func start() {
    startTime = NSDate()
    print("working?")
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow
      // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    // return the formatted string...
    let m = Int(elapsedTime / 60)
    let s = Int(elapsedTime - Double(m * 60))
    let ms = Int(((elapsedTime - Double(m * 60)) - Double(s)) * 10)
    return String(format: "%02d:%02d.%01d", m, s, ms)
  }
  
  var isRunning: Bool {
    if startTime != nil {
      return true
    }
    return false
  }
  
  
}
