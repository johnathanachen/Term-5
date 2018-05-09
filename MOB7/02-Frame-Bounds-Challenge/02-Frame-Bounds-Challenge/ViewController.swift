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
        
//        fillScreen()
        chessBoard()
        
    }

    func fillScreen() {
        let rect = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        let fullScreen = UIView(frame: rect)
        fullScreen.backgroundColor = UIColor.blue
        view.addSubview(fullScreen)
    }
    
    func chessBoard() {
        let width = view.bounds.width / CGFloat(8)
        for i in 0 ... 9 {
            let rect = CGRect(x: i * 10, y: 20, width: width, height: width)
            let line = UIView(frame: rect)
            line.backgroundColor = UIColor.brown
            view.addSubview(line)
        }
        
        
        
        
        
    }


}

