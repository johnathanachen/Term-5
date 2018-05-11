//
//  ConcentricSquares.swift
//  02-Frame-Bounds-Challenge
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class ConcentricSquares: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let rectBox = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        
        for i in 0 ... 8 {
            var insetAmount = CGFloat(i) * 10
            let rect = UIView(frame: rectBox)
            let inset = bounds.insetBy(dx: insetAmount, dy: insetAmount)
            rect.frame = inset
            let saturation = CGFloat(i) * 0.1
            rect.backgroundColor = UIColor(hue: 0.7, saturation: saturation, brightness: 1, alpha: 1)
            addSubview(rect)
        }
        
    }
}
