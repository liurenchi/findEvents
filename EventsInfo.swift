//
//  enentInfo.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class EventsInfo: NSObject {

    
    var event_img: String
    var event_title: String
    var event_time: String
    var event_detail: String
    var event_tag: String
    var event_code: String

    
    init(event_img: String, event_title: String, event_time: String, event_detail: String, event_tag: String, event_code: String) {
        
        self.event_img = event_img
        self.event_title = event_title
        self.event_time = event_time
        self.event_detail = event_detail
        self.event_tag = event_tag
        self.event_code = event_code
    }
    
    
    
}
