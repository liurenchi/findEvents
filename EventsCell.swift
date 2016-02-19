//
//  EventsCell.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
// 自定义cell

import UIKit

class EventsCell: UITableViewCell {

    var backgroundview: UIView
    var event_img: UIImageView
    var event_title: UILabel
    var event_time: UILabel
    var event_detail: UILabel
    var event_tag: UILabel
    
//    var addEvents: UIButton
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
      
        self.backgroundview = UIView(frame:CGRectMake(10, 5,
            UIScreen.mainScreen().bounds.width - 20, 430) )
        
        self.event_img = UIImageView(frame: CGRectMake(15, 10,
            UIScreen.mainScreen().bounds.width - 30, 240))
        self.event_img.image = UIImage(named: "P2")
        
        self.event_title = UILabel(frame: CGRectMake(15, 260,
            UIScreen.mainScreen().bounds.width - 30, 40))
        self.event_title.font = UIFont.boldSystemFontOfSize(25)
        self.event_title.textAlignment = NSTextAlignment.Center
        self.event_title.text = "Women in Power"
        
        
        self.event_time = UILabel(frame: CGRectMake(15, 300,
            UIScreen.mainScreen().bounds.width - 30, 20))
        self.event_time.font = UIFont.boldSystemFontOfSize(13)
        self.event_time.text = "time:tomorrow"
        
        self.event_detail = UILabel(frame: CGRectMake(15, 330,
            UIScreen.mainScreen().bounds.width - 30, 60))
        //self.event_detail.backgroundColor = UIColor.redColor()
        self.event_detail.font = UIFont.boldSystemFontOfSize(18)
        self.event_detail.numberOfLines = 0
        self.event_detail.text = "women is wonderful and powerful"

        self.event_tag = UILabel(frame: CGRectMake(15, 410,
            UIScreen.mainScreen().bounds.width - 30, 20))
        self.event_tag.textColor = UIColor.grayColor()
        self.event_tag.font = UIFont.boldSystemFontOfSize(10)
        self.event_tag.text = "#CS;#Women"
        
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //背景卡片阴影效果
        self.backgroundview.backgroundColor = UIColor.whiteColor()
        self.backgroundview.layer.shadowColor = UIColor.blackColor().CGColor
        self.backgroundview.layer.shadowOffset = CGSizeMake(2, 2)
        self.backgroundview.layer.shadowOpacity = 0.8
        
        
        self.addSubview(self.backgroundview)
        self.addSubview(self.event_img)
        self.addSubview(self.event_title)
        self.addSubview(self.event_time)
        self.addSubview(self.event_detail)
        self.addSubview(self.event_tag) 
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func reuseIdetifier() -> String {
        return "EventsCell"
    }
    
    class func heightForCell() -> CGFloat  {
        return 440
    }
    
    func setupEventsCell(events: EventsInfo) {
        
        self.event_img.image = UIImage(named: events.event_img)
        self.event_title.text = events.event_title
        self.event_detail.text = events.event_detail
        self.event_time.text = events.event_time
        self.event_tag.text = events.event_tag
    
    }
    
   
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
