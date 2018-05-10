//
//  ViewController.swift
//  04-Motion
//
//  Created by Johnathan Chen on 5/10/18.
//  Copyright © 2018 Johnathan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }

    func setup() {
        for i in 0 ... 6 {
            let width = view.bounds.width / 5
            let randNumber = CGFloat(arc4random() % 1)
            let randColor = UIColor(red: randNumber, green: randNumber, blue: randNumber, alpha: 1)
            let rect = CGRect(x: 0, y: width + CGFloat(i), width: width, height: width)
            let boxRow = UIView(frame: rect)
            
            view.addSubview(boxRow)
        }
        
    }

}

