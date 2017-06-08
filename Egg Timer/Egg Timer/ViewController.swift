//
//  ViewController.swift
//  Egg Timer
//
//  Created by Local Admin on 01/03/2017.
//  Copyright © 2017 Matt Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    // Default time in seconds
    var defaultSeconds: Int = 210
    var seconds: Int = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func startButtonPress(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerProcess), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButtonPress(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButtonPress(_ sender: Any) {
        timer.invalidate()
        seconds = defaultSeconds
        timeLabel.text = String(seconds)
    }
    
    @IBAction func plusTenButtonPress(_ sender: Any) {
        seconds += 10
        timeLabel.text = String(seconds)
    }
    
    @IBAction func minusTenButtonPress(_ sender: Any) {
        if seconds > 10 {
            seconds -= 10
            timeLabel.text = String(seconds)
        } else {
            seconds = 0
            timeLabel.text = String(seconds)
            timer.invalidate()
        }
    }
    
    func timerProcess() {
        if seconds > 0 {
            seconds -= 1
            timeLabel.text = String(seconds)
        } else {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        seconds = defaultSeconds
        timeLabel.text = String(seconds)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

