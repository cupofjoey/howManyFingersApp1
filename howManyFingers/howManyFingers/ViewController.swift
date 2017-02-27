//
//  ViewController.swift
//  howManyFingers
//
//  Created by BishopHill on 2/26/17.
//  Copyright © 2017 Dumb Unicorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var numGuess: UITextField!
    
    @IBAction func guessButton(_ sender: AnyObject) {
       let diceRoll = String(arc4random_uniform(6))
        
        if numGuess.text == diceRoll {
            rightWrong.text = "Correct!"
        } else {
            rightWrong.text = "Sorry, It was a " + diceRoll + "."
        }
    }
    
    @IBOutlet var rightWrong: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

