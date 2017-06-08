//
//  ViewController.swift
//  How Many Fingers - 2
//
//  Created by Local Admin on 27/02/2017.
//  Copyright © 2017 Matt Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessField: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        let guess = Int(guessField.text!)
        let fingers = Int(arc4random_uniform(6))
        
        if guess == fingers {

            answer.text = "Correct, the answer is " + String(fingers)
            
        } else {
        
        answer.text = "Wrong, the answer is " + String(fingers)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

