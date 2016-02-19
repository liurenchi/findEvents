//
//  EventsViewController.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableview = UITableView()
    var tableSource = []
    
    //MARK: - 数据源
    let event_1 = EventsInfo(event_img: "P1", event_title:"1-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_2 = EventsInfo(event_img: "P2", event_title:"2-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_3 = EventsInfo(event_img: "P3", event_title:"3-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_4 = EventsInfo(event_img: "P1", event_title:"4-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    let event_5 = EventsInfo(event_img: "P2", event_title:"5-Women in Power" , event_time:"time:tomorrow" , event_detail: "women is wonderful and powerful", event_tag: "#CS;#Women", event_code: "eweima")
    
    // MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Events"
        
        
        //tableview数据源
        self.tableSource = [event_1,event_2,event_3,event_4,event_5]
        
        //tableview代理，自定义cell的注册
        self.tableview.dataSource = self
        self.tableview.delegate = self
        self.tableview.registerClass(EventsCell.self, forCellReuseIdentifier: EventsCell.reuseIdetifier())
        
        self.tableview.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
       
        self.view.addSubview(self.tableview)
  
    }

   
    // MARK: - tableview delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableSource.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return EventsCell.heightForCell()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(EventsCell.reuseIdetifier()) as! EventsCell
        
        //cell.backgroundColor = UIColor.redColor()
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        cell.setupEventsCell(self.tableSource.objectAtIndex(indexPath.row) as! EventsInfo)
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let eventsDetail = EventsDetailViewController()
        self.navigationController?.pushViewController(eventsDetail, animated: true)
        
    
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}





