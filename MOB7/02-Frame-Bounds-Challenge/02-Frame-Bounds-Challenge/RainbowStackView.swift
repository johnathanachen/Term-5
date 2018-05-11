//
//  RainbowStackView.swift
//  02-Frame-Bounds-Challenge
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class RainbowStackView: UIView {

    var colors: [UIColor]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let numBoxes = 15
        let boxRect = CGRect(x: 0, y: 0, width: bounds.width, height: 60)
        
        for i in 0 ..< Int(numBoxes) {
            let box = UIView(frame: boxRect)
            addSubview(box)
            let hue = 1 / CGFloat(numBoxes) * CGFloat(i)
            box.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
            box.center.x = center.x
            box.center.y = bounds.height/CGFloat(numBoxes - 1) * CGFloat(i)
        }
    }

}
