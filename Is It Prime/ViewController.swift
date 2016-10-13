//
//  ViewController.swift
//  Is It Prime
//
//  Created by Kevin Le on 10/06/2010.
//  Copyright © 2015 Kevinvle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!

    @IBAction func isItPrime(_ sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            
            }
        
            if number != 2 && number != 1 {
            
                for i in 2 ..< number {
                
                    if number % i == 0 {
                    
                        isPrime = false
                    
                    }
                
                }
            
            }
        
            if isPrime {
            
                resultLabel.text = "\(number) is prime!"
            
            } else {
            
                resultLabel.text = "\(number) is not prime"
            
            }
            
        } else {
            
            resultLabel.text = "Please enter a whole number"
            
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

