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
    @IBOutlet weak var scoreCount: UILabel!
    @IBOutlet weak var highScore: UILabel!
    
    
    var score = 0
    var highscore = 0 
    var currentScore = 0
    
    var myRed = CGFloat.random(in: 0...1)
    var myBlue = CGFloat.random(in: 0...1)
    var myGreen = CGFloat.random(in: 0...1)
    
    func randomColor() -> UIColor {
         myRed = CGFloat.random(in: 0...1)
         myBlue = CGFloat.random(in: 0...1)
         myGreen = CGFloat.random(in: 0...1)
        let new = UIColor.init(red: myRed, green: myGreen, blue: myBlue, alpha: 1)
        return new
    }
    
    //buttons
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorInPlay.backgroundColor = randomColor()
        gamePrompt.text = "Which color is most related"
        scoreCount.text = "score: 0"
        
        
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        blueButton.isEnabled = true
        redButton.isEnabled = true
        greenButton.isEnabled = true
        viewDidLoad()
        score = 0
    }
    
    
    @IBAction func rgbButtons(_ button: UIButton) {

        let randomColors = [myRed , myBlue, myGreen]
        let dominantColor = randomColors.max() ?? 0
        
        switch dominantColor {
        case myRed :
            if button.tag == 0 {
                gamePrompt.text = "correct"
                colorInPlay.backgroundColor = randomColor()
                score += 1
                scoreCount.text = "score : \(score)"
                currentScore = score
                
                
            } else {
                gamePrompt.text = "wrong"
            }
            
        case myBlue :
            if button.tag == 1 {
                gamePrompt.text = "correct"
                colorInPlay.backgroundColor = randomColor()
                score += 1
                scoreCount.text = "score : \(score)"
                currentScore = score
                
            } else {
                gamePrompt.text = "wrong"
            }
            
        case myGreen :
            if button.tag == 2 {
                gamePrompt.text = "correct"
                colorInPlay.backgroundColor = randomColor()
                score += 1
                scoreCount.text = "score : \(score)"
                currentScore = score
                
            } else {
                gamePrompt.text = "wrong"
            }
            
        default:
            gamePrompt.text = "testing"
        }
        
        switch gamePrompt.text {
        case "correct" :
             colorInPlay.backgroundColor = randomColor()
        case "wrong" :
            redButton.isEnabled = false
            greenButton.isEnabled = false
            blueButton.isEnabled = false
        default :
            colorInPlay.backgroundColor = .black
        }
        
        
        if currentScore < highscore {
            highScore.text = "High Score : \(highscore)"
        } else if currentScore > highscore {
            highscore = currentScore
            highScore.text = "High Score : \(highscore)"
        }
        
        
    }
    
    
}

