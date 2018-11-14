//
//  DVDCheckBoxProtocol.swift
//  DVDCheckBox
//
//  Created by Mr.Robo on 11/9/18.
//  Copyright © 2018 DVDCheckBox. All rights reserved.
//

import Foundation
public typealias ActionResult = (_ isSelected:Bool)->()

public protocol DVDCheckBoxProtocol {
    /// Change checkbox select status
    var isSelected:Bool {get set}
    
    
    /// Action handle callback
    var actionHandler:ActionResult? {get set}
    
    /// Text of title
    var titleText:String? {get set}
}
