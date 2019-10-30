//
//  ViewController.swift
//  ColorGame
//
//  Created by casandra grullon on 10/29/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var colorInPlay: UIImageView!
    
    @IBOutlet weak var gamePrompt: UILabel!
    
    var myRed = CGFloat.random(in: 0...1)
    var myBlue = CGFloat.random(in: 0...1)
    var myGreen = CGFloat.random(in: 0...1)
    
    //buttons
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomColor = UIColor.init(red: myRed, green: myGreen, blue: myBlue, alpha: 1)
        colorInPlay.backgroundColor = randomColor
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        blueButton.isEnabled = true
        redButton.isEnabled = true
        greenButton.isEnabled = true
        let randomColor = UIColor.init(red: myRed, green: myGreen, blue: myBlue, alpha: 1)
        colorInPlay.backgroundColor = randomColor
        
    }
    
    
    @IBAction func rgbButtons(_ button: UIButton) {

        let randomColor = UIColor.init(red: myRed, green: myGreen, blue: myBlue, alpha: 1)
        let randomColors = [myRed , myBlue, myGreen]
        let highestAmount = randomColors.max()
        let dominantColor = highestAmount ?? 0
        
        switch dominantColor {
        case myRed :
            if button.tag == 0 {
                gamePrompt.text = "correct"
            } else {
                gamePrompt.text = "wrong"
            }
            
        case myBlue :
            if button.tag == 1 {
                gamePrompt.text = "correct"
            } else {
                gamePrompt.text = "wrong"
            }
            
        case myGreen :
            if button.tag == 2 {
                gamePrompt.text = "correct"
            } else {
                gamePrompt.text = "wrong"
            }
            
        default:
            gamePrompt.text = "testing"
        }
        
        switch gamePrompt.text {
        case "correct" :
            colorInPlay.backgroundColor = randomColor
        case "wrong" :
            redButton.isEnabled = false
            greenButton.isEnabled = false
            blueButton.isEnabled = false
        default :
            colorInPlay.backgroundColor = .black
        }
        
    }
    
    
}

