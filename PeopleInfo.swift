//
//  PeopleInfo.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class PeopleInfo: NSObject {

    
    var icon: String
    var name: String
    var message: String
    var type: String
    
    init(icon: String, name: String, message: String, type: String) {
        self.icon = icon
        self.name = name
        self.message = message
        self.type = type
    }
    
    
    
    
}
