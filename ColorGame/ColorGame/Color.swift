//
//  Color.swift
//  ColorGame
//
//  Created by casandra grullon on 10/29/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

struct Color {

    var randomNum = CGFloat.random(in: 0...1)
    
    func randomColor() -> UIColor {
        let myColor = UIColor.init(red: randomNum, green: randomNum, blue: randomNum, alpha: randomNum)
        return myColor
    }
    
    
}

