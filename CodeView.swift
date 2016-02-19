//
//  CodeView.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
// 自定义uiview

import UIKit

class CodeView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    var backgroundview: UIView
    var event_img: UIImageView
    var event_title: UILabel
    var event_time: UILabel
    var event_code: UIImageView
    
    override init(frame: CGRect) {
        
        self.backgroundview = UIView()
        self.event_img = UIImageView()
        self.event_code = UIImageView()
        self.event_title = UILabel()
        self.event_time = UILabel()
        
        super.init(frame: frame)
        
        
        self.backgroundview.frame = CGRectMake(0, 0,
            self.frame.width, self.frame.height)
        
        self.event_time = UILabel(frame: CGRectMake(5, 5,
            self.frame.width - 10, 30))
        self.event_time.font = UIFont.boldSystemFontOfSize(13)
        //self.event_time.backgroundColor = UIColor.redColor()
        self.event_time.numberOfLines = 0
        self.event_time.text = "time:tomorrow"
        
        self.event_img = UIImageView(frame:CGRectMake(0, 50,
            self.frame.width, self.frame.width - 80))
        self.event_img.image = UIImage(named: "P2")
        
        self.event_title = UILabel(frame: CGRectMake(5, 260,
            self.frame.width - 10, 40))
        //self.event_title.backgroundColor = UIColor.redColor()
        self.event_title.font = UIFont.boldSystemFontOfSize(25)
        self.event_title.textAlignment = NSTextAlignment.Center
        self.event_title.text = "Women in Power"
        
        self.event_code = UIImageView(frame:CGRectMake(90, 340,
            self.frame.width - 180, self.frame.width - 180))
        self.event_code.image = UIImage(named: "eweima")
        
        //背景卡片阴影效果
        self.backgroundview.backgroundColor = UIColor.whiteColor()
        self.backgroundview.layer.shadowColor = UIColor.blackColor().CGColor
        self.backgroundview.layer.shadowOffset = CGSizeMake(1, 1)
        self.backgroundview.layer.shadowOpacity = 0.8
        
        
        self.addSubview(self.backgroundview)
        self.addSubview(self.event_img)
        self.addSubview(self.event_title)
        self.addSubview(self.event_time)
        self.addSubview(self.event_code)
    
    
    
    
    
    }
    
    func setupCodeView(events: EventsInfo) {
        
        self.event_img.image = UIImage(named: events.event_img)
        self.event_title.text = events.event_title
        self.event_time.text = events.event_time
        self.event_code.image = UIImage(named: events.event_code)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
