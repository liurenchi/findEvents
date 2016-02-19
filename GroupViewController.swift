//
//  GroupViewController.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {

    var topBGM: UIImageView!
    var topTitle: UILabel!
    var topIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        self.topBGM = UIImageView(frame: CGRectMake(0, 60, self.view.frame.width, 200))
        self.topBGM.image = UIImage(named: "Rectangle 35")
        
        self.topTitle = UILabel(frame:CGRectMake(90, 90,self.view.frame.width - 120, 90))
        self.topTitle.font = UIFont.boldSystemFontOfSize(18)
        self.topTitle.text = "WOMEN IN TECHNOLOGY CONFERENCE"
        self.topTitle.numberOfLines = 0
        self.topTitle.textAlignment = NSTextAlignment.Center
        
        self.topIcon = UIImageView(frame: CGRectMake(20, 110, 55, 55))
        self.topIcon.image = UIImage(named: "uob_crest")

        self.view.addSubview(self.topBGM)
        self.view.addSubview(self.topTitle)
        self.view.addSubview(topIcon)
        
        
        // Do any additional setup after loading the view.
    }

   
















}
