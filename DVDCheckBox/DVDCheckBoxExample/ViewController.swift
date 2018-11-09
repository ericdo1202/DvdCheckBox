//
//  ViewController.swift
//  DVDCheckBoxExample
//
//  Created by Mr.Robo on 11/9/18.
//  Copyright © 2018 DVDCheckBox. All rights reserved.
//

import UIKit
import DVDCheckBox

class ViewController: UIViewController {
    @IBOutlet weak var checkBox: DVDCheckBox!
    @IBOutlet weak var checkbox2: DVDCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkBox.titleText = "Checkbox 1"
        checkbox2.titleText = "Checkbox 2"
        checkBox.actionHandler = {(isSelceted)->() in
            print("Check box 1 IsSelected: \(isSelceted)")
        }
        
        checkbox2.actionHandler = {(isSelceted)->() in
            print("Check box 2 IsSelected: \(isSelceted)")
        }
        
    }


}

