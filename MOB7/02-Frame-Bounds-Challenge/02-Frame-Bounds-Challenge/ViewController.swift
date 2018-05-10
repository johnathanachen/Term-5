//
//  ViewController.swift
//  02-Frame-Bounds-Challenge
//
//  Created by Johnathan Chen on 5/7/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        self.view = FillScreen(frame: rect)
//        RainbowStackView()

        
    }
        
}



