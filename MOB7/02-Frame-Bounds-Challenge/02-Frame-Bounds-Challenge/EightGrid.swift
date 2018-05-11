//
//  EightGrid.swift
//  02-Frame-Bounds-Challenge
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class EightGrid: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var yCoord: CGFloat = 0

        for i in 0 ... 8 {
            var xCoord: CGFloat = 0
            
            var isGreen = true
            if i % 2 == 0 {
                isGreen = false
            }
            
            for i in 0 ... 8 {
                let squareRect = CGRect(x: xCoord, y: yCoord, width: bounds.width / 8, height: bounds.width / 8)
                let square = UIView(frame: squareRect)
                let hue = 1 / CGFloat(65) * CGFloat(i)
                square.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
                
                if isGreen {
                    square.backgroundColor = UIColor.green
                    isGreen = false
                } else {
                    isGreen = true
                }
                
                addSubview(square)
                
                xCoord = xCoord + (bounds.width / 8)
            }
            
            yCoord = yCoord + (bounds.width / 8)
            
        }
        
    }

}
