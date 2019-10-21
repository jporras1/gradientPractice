//
//  ViewController.swift
//  gradientPractice
//
//  Created by Javier Porras jr on 10/21/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    let CGOrange = UIColor(red: 255/255, green: 175/255, blue: 72/255, alpha: 1)
    let CGBrightOrage = UIColor(red: 255/255, green: 69/255, blue: 0/255, alpha: 1)
    
    //MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //example of the default version, Will go TOP-to-BOTTOM
        view.setGradient(color1: CGBrightOrage, color2: CGOrange)
        
        //example of the full version
        //view.setGradient(color1: CGBrightOrage, color2: CGOrange, pan: .right)
    }
}
