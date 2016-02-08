//
//  ViewController.swift
//  Lucky Guess
//
//  Created by Justinas Alisauskas on 23/01/2016.
//  Copyright © 2016 JustInCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBOutlet var inputNumber: UITextField!

    @IBAction func pressedButton(sender: AnyObject) {
        
        /*func rand(min: UInt, max: UInt) -> UInt
        {
            var randomNum: UInt = 0
            arc4random_buf(&randomNum, sizeof(UInt))
            
            return min + (randomNum % (max - min))
        }*/
        //let means that randomNumber will not change
        //let randomNumber = Int(rand(1, max:6))
        let randomNumber2 = String(arc4random_uniform(6))
        //let randomNumber = Int(rand()%30 + 6)
        
        if randomNumber2 == inputNumber.text!{
            resultLabel.text = randomNumber2
            titleLabel.text = "You guessed RIGHT!"
            textButton.setTitle("Try Once More?", forState:UIControlState.Normal)
        }else if inputNumber.text! != ""{
            resultLabel.text = randomNumber2 + " != " + String(inputNumber.text!)
            titleLabel.text = "You were WRONG!"
            textButton.setTitle("Damn Boy, Try Again!", forState: UIControlState.Normal)
        }else{
            resultLabel.text = "No number..."
            titleLabel.text = "You were LAZY!"
            textButton.setTitle("Damn Boy!", forState: UIControlState.Normal)
        }
    }
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var textButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    
}

