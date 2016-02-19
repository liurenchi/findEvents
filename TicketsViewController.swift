//
//  TicketsViewController.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class TicketsViewController: UIViewController {

  
    //MARK: - 数据源
    let event_1 = EventsInfo(event_img: "P1", event_title:"1-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_2 = EventsInfo(event_img: "P2", event_title:"2-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_3 = EventsInfo(event_img: "P3", event_title:"3-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_4 = EventsInfo(event_img: "P1", event_title:"4-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_5 = EventsInfo(event_img: "P2", event_title:"5-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")

    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = CodeView(frame: CGRectMake(70 + self.view.frame.width*0,
            80,self.view.frame.width - 140,self.view.frame.height - 200))
        let view2 = CodeView(frame: CGRectMake(70 + self.view.frame.width*1,80,
            self.view.frame.width - 140,self.view.frame.height - 200))
        let view3 = CodeView(frame: CGRectMake(70 + self.view.frame.width*2,80,
            self.view.frame.width - 140,self.view.frame.height - 200))
        let view4 = CodeView(frame: CGRectMake(70 + self.view.frame.width*3,
            80,self.view.frame.width - 140,self.view.frame.height - 200))
        let view5 = CodeView(frame: CGRectMake(70 + self.view.frame.width*4,
            80,self.view.frame.width - 140,self.view.frame.height - 200))
        
        
        let scrollView = UIScrollView(frame: CGRectMake(0, 0,self.view.frame.width,
                                     self.view.frame.height - 48))
        scrollView.contentSize = CGSize(width: self.view.frame.width*5,
                                        height: self.view.frame.height - 48)
        
        scrollView.backgroundColor = UIColor.whiteColor()
        
        
        
        //数据设置
        var viewsDate = []
        viewsDate = [event_1,event_2,event_3,event_4,event_5]
        var views = [CodeView]()
        views = [view1,view2,view3,view4,view5]
        var i = 0
        for data in viewsDate {
            
            views[i].setupCodeView(data as! EventsInfo)
            i++
        }

        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        scrollView.addSubview(view4)
        scrollView.addSubview(view5)
        self.view.addSubview(scrollView)
        
   
        // Do any additional setup after loading the view.
    }

       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
