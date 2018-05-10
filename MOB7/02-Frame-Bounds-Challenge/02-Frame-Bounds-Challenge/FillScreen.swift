//
//  FillScreen.swift
//  02-Frame-Bounds-Challenge
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class FillScreen: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        let rect = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        let fullScreen = UIView(frame: rect)
        fullScreen.backgroundColor = UIColor.blue
        addSubview(fullScreen)
    }

}
