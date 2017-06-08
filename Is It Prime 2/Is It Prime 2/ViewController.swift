//
//  ViewController.swift
//  Is It Prime 2
//
//  Created by Local Admin on 28/02/2017.
//  Copyright © 2017 Matt Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var i = 2
                
                var isPrime = true
                
                while  i < number && isPrime == true {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    } else {
                        
                        i += 1
                        
                    }
                    
                }
                
                if number == 1 {
                    
                    resultLabel.text = String(number) + " is not a prime number."
                    
                } else if isPrime == true {
                    
                    resultLabel.text = String(number) + " is a prime number."
                    
                } else {
                    
                    resultLabel.text = String(number) + " is not a prime number, it is divisible by " + String(i) + "."
                    
                }
                
                
            } else {
                
                resultLabel.text = "Please enter a positive whole number"
                
            }
            
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

