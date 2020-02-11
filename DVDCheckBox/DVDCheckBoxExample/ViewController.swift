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
    @IBOutlet weak var radio1: DVDCheckBox!
    @IBOutlet weak var radio2: DVDCheckBox!
    
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
        
        radio1.titleText = "Radio 1"
        radio2.titleText = "Radio 2"
        radio1.actionHandler = {(isSelceted)->() in
            print("Radio 1 IsSelected: \(isSelceted)")
            self.radio2.isSelected = false
        }
        
        radio2.actionHandler = {(isSelceted)->() in
            print("Radio 2 IsSelected: \(isSelceted)")
            self.radio1.isSelected = false
        }
        
        checkBox.isEnable = false
        
    }


}

