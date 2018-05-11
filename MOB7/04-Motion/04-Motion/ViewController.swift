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
        
        let rect = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        
//        self.view = Popup(frame: rect)
        self.view = SpringPopup(frame: rect)
        
        
    }

    

}

