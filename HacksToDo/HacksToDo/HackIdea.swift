//
//  HackIdea.swift
//  HacksToDo
//
//  Created by Krishnan Srinivasan on 4/17/15.
//  Copyright (c) 2015 HackYale. All rights reserved.
//

import UIKit

class HackIdea: NSObject {

    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String) {
        self.itemName = name
    }
    
}
