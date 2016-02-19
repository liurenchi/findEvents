//
//  MessageCell.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    let iconSize = CGSizeMake(45, 45)
    var icon: UIImageView
    var messageLabel: UILabel
    var messageBackground: UIImageView
    
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        icon = UIImageView(frame:CGRectMake(5, 5,
            45, 45) )
        messageLabel = UILabel(frame:CGRectMake(5 + 45 + 10, 5,
            UIScreen.mainScreen().bounds.width - 45*2 - 10 - 10, 45) )
        messageLabel.backgroundColor = UIColor(red: 197/255, green: 233/255, blue: 231/255, alpha: 0.8)
        
        
        messageBackground = UIImageView()
        messageLabel.font = UIFont.systemFontOfSize(16)
        messageLabel.numberOfLines = 0
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        
        self.addSubview(messageLabel)
        self.addSubview(messageBackground)
        self.backgroundColor = UIColor.clearColor()
        
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    class func reuseIdetifier() -> String {
        return "MessageCell"
    }
    
    class func heightForCell()->CGFloat {
        return 80
    }
    
    func setupMessageCell(message:MessageInfo){
        
        
        
        if message.icon == "Lingfeng"{
            icon = UIImageView(frame:CGRectMake(UIScreen.mainScreen().bounds.width - 5 - 45, 5,
                45, 45) )
            
            
        }
        self.icon.image = UIImage(named: message.icon)
        self.messageLabel.text = message.talk
        
        self.addSubview(icon)
        
    }
    
    
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
