//
//  PeopleCell.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {

    var backgroundview: UIView
    var icon: UIImageView
    var name: UILabel
    var message: UILabel
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
     

        
        self.backgroundview = UIView(frame:CGRectMake(0, 0,
            UIScreen.mainScreen().bounds.width, 80))
        
        self.icon = UIImageView(frame:CGRectMake(5, 5,
            70, 70) )
        self.icon.image = UIImage(named: "Lingfeng1")
        
        
        self.name = UILabel(frame: CGRectMake(120, 15,
            UIScreen.mainScreen().bounds.width, 20))
        self.name.font = UIFont.boldSystemFontOfSize(20)
        self.name.text = "Lingfeng"
        
        self.message = UILabel(frame: CGRectMake(120, 45,
            UIScreen.mainScreen().bounds.width, 10))
        self.message.font = UIFont.boldSystemFontOfSize(10)
        self.message.text = "Are you OK?"
        
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        //背景卡片阴影效果
        self.backgroundview.backgroundColor = UIColor.whiteColor()
        self.backgroundview.layer.shadowColor = UIColor.blackColor().CGColor
        self.backgroundview.layer.shadowOffset = CGSizeMake(0, 1)
        self.backgroundview.layer.shadowOpacity = 0.8

        
       // self.backgroundColor = UIColor.redColor()
        self.addSubview(self.backgroundview)
        self.addSubview(self.icon)
        self.addSubview(self.name)
        self.addSubview(self.message)
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func reuseIdetifier() -> String {
        return "PeopleCell"
    }
    
    class func heightForCell() -> CGFloat  {
        return 80
    }
    
    func setupPeopleCell(people: PeopleInfo) {
        self.icon.image = UIImage(named: people.icon)
        self.name.text = people.name
        self.message.text = people.message
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
