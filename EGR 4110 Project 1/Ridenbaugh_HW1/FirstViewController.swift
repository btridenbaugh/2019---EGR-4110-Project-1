//
//  FirstViewController.swift
//  Ridenbaugh_HW1
//
//  Created by Benjamin Ridenbaugh on 9/24/19.
//  Copyright © 2019 Benjamin Ridenbaugh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var RGB: UILabel!
    
    @IBOutlet weak var Text: UITextField!
    
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Text.text = "Tap to Change Color"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

    @IBAction func ButtonAction(_ sender: Any) {
        let red = Float(arc4random_uniform(257))
        let green = Float(arc4random_uniform(257))
        let blue = Float(arc4random_uniform(257))
        
        RGB.text = "Red: \(red)\nGreen: \(green)\nBlue: \(blue)"
        
        Text.textColor = UIColor(red: CGFloat(red/256), green: CGFloat(green/256), blue: CGFloat(blue/256), alpha: 1)
    }
    
    
    
}

