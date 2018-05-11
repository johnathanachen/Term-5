//
//  SpringPopup.swift
//  04-Motion
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class SpringPopup: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        var xCoord: CGFloat = 0
        for i in 0 ... 6 {
            let rect = CGRect(x: xCoord, y: bounds.height, width: bounds.width / 5, height: 60)
            let box = UIView(frame: rect)
            let saturation = 0.5 / CGFloat(i)
            box.backgroundColor = UIColor(hue: 1, saturation: saturation, brightness: 1, alpha: 1)
            xCoord = xCoord + (bounds.width / 5)
            addSubview(box)
            
            let delay = TimeInterval(i) * 0.2
            UIView.animate(withDuration: 0.7, delay: delay, usingSpringWithDamping: 0.4, initialSpringVelocity: 00, options: [], animations: {
                 box.center.y = self.bounds.height - 30
            }, completion: nil)
            
            
            
        }
        
    }
}
