//
//  ViewController.swift
//  Stopwatch
//
//  Created by Sooyoung Kim on 07/09/2021.
//  Copyright © 2021 Sooyoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  let stopwatch = Stopwatch()
  
  @objc func updateElapsedTimeLabel(timer: Timer) {
    if stopwatch.isRunning {
      elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
    } else {
      timer.invalidate()
    }
  }
  

  
  @IBOutlet weak var elapsedTimeLabel: UILabel!

  @IBAction func startButtonTapped(sender: UIButton) {
    // code to start the clock
    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
    
    stopwatch.start()
  }

  @IBAction func stopButtonTapped(sender: UIButton) {
    // code to stop the clock
    stopwatch.stop()
  }

}

