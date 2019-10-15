//
//  SecondViewController.swift
//  Ridenbaugh_HW1
//
//  Created by Benjamin Ridenbaugh on 9/24/19.
//  Copyright © 2019 Benjamin Ridenbaugh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

    @IBAction func deleteclk(_ sender: Any) {
        Text.deleteBackward()
    }
    
    @IBAction func enterclk(_ sender: Any) {
        
        let equal = Text.text
        
        if equal!.contains("+"){
            let equalarray = equal?.split(separator: "+")
            let num1 = Int(equalarray![0]) ?? 0
            let num2 = Int(equalarray![1]) ?? 0
            let result = num1 + num2
            Text.text = String(result)
        }
        
        if equal!.contains("-"){
            let equalarray = equal?.split(separator: "-")
            let num1 = Int(equalarray![0]) ?? 0
            let num2 = Int(equalarray![1]) ?? 0
            let result = num1 - num2
            Text.text = String(result)
        }
        
        if equal!.contains("*"){
            let equalarray = equal?.split(separator: "*")
            let num1 = Int(equalarray![0]) ?? 0
            let num2 = Int(equalarray![1]) ?? 0
            let result = num1 * num2
            Text.text = String(result)
        }
        
        if equal!.contains("/"){
            let equalarray = equal?.split(separator: "/")
            let num1 = Float(equalarray![0]) ?? 0
            let num2 = Float(equalarray![1]) ?? 0
            let result = num1 / num2
            Text.text = String(result)
        }
        
    }
    
    @IBAction func clearclk(_ sender: Any) {
        Text.text = ""
    }
    
    @IBAction func addclk(_ sender: Any) {
        Text.insertText("+")
    }
    
    @IBAction func subclk(_ sender: Any) {
        Text.insertText("-")
    }
    
    @IBAction func multclk(_ sender: Any) {
        Text.insertText("*")
    }
    
    @IBAction func divclk(_ sender: Any) {
        Text.insertText("/")
    }
    
    @IBAction func zero(_ sender: Any) {
        Text.insertText("0")
    }
    
    @IBAction func one(_ sender: Any) {
        Text.insertText("1")
    }
    
    @IBAction func two(_ sender: Any) {
        Text.insertText("2")
    }
    
    @IBAction func three(_ sender: Any) {
        Text.insertText("3")
    }
    
    @IBAction func four(_ sender: Any) {
        Text.insertText("4")
    }
    
    @IBAction func five(_ sender: Any) {
        Text.insertText("5")
    }
    
    @IBAction func six(_ sender: Any) {
        Text.insertText("6")
    }
    
    @IBAction func seven(_ sender: Any) {
        Text.insertText("7")
    }
    
    @IBAction func eight(_ sender: Any) {
        Text.insertText("8")
    }
    
    @IBAction func nine(_ sender: Any) {
        Text.insertText("9")
    }
      
}

