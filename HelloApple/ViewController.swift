//
//  ViewController.swift
//  HelloApple
//
//  Created by William Ma on 5/07/19.
//  Copyright © 2019 William Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.accessibilityIdentifier = "HelloScreen"
        helloWorldLabel.text = "Hello"
        helloWorldLabel.accessibilityIdentifier = "helloLabel"
        changeButton.accessibilityIdentifier = "changeButton"
    }
    
    @IBAction func changeButtonDidTap(_ sender: Any) {
        
        if helloWorldLabel.text == "Changed" {
            helloWorldLabel.text = "Hello"
        }else{
            helloWorldLabel.text = "Changed"
        }
        
        helloWorldLabel.layoutIfNeeded()
    }
}

