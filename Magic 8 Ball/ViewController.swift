//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Zhang on 7/5/18.
//  Copyright © 2018 Bowen Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImageView: UIImageView!
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        actionForAskButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // When the button is pressed
    @IBAction func pressAskButton(_ sender: UIButton) {
        actionForAskButton()
    }
    // Actions when the button is pressed
    func actionForAskButton(){
        randomNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomNumber])
        // or use the line below
        // ballImageView.image = UIImage(named: "ball\(randomNumber)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        actionForAskButton()
    }
}

