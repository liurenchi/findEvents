//
//  ChatsViewController.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableview = UITableView()
    var tableSource: NSMutableArray = []
    
    
    
    //MARK: - 数据源
    
    let people1 = PeopleInfo(icon: "charlie-pinder", name: "charlie-pinder", message: "Are u OK?", type:"people")
    let people2 = PeopleInfo(icon: "maeve-higham", name: "maeve-higham", message: "Are u OK?", type:"people")
    let people3 = PeopleInfo(icon: "jessica-rose", name: "jessica-rose", message: "Are u OK?", type:"people")
    let people4 = PeopleInfo(icon: "fleckr", name: "fleckr", message: "Are u OK?", type:"people")
    let people5 = PeopleInfo(icon: "uob_crest", name: "uob_crest ", message: "Share a slide?", type:"group")
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "People"
        
        self.view.backgroundColor = UIColor.grayColor()
        //tableview代理，自定义cell的注册
        self.tableview.dataSource = self
        self.tableview.delegate = self
        self.tableview.registerClass(PeopleCell.self, forCellReuseIdentifier: PeopleCell.reuseIdetifier())
        
        self.tableview.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        
        self.tableSource = [people1, people2, people3, people4, people5]
        self.view.addSubview(self.tableview)
        
        
        
    }

    // MARK: - tableview delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableSource.count
    
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return PeopleCell.heightForCell()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(PeopleCell.reuseIdetifier()) as! PeopleCell
        
        //cell.backgroundColor = UIColor.redColor()
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        cell.setupPeopleCell(self.tableSource.objectAtIndex(indexPath.row) as! PeopleInfo)
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            self.tableSource.removeObjectAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        //区分聊天类型
        if self.tableSource[indexPath.row].type == "people"{
            let message = MessageViewController()
            self.navigationController?.pushViewController(message, animated: true)
            message.people_name = self.tableSource[indexPath.row].name
        }
        else{
            let group = GroupViewController()
            self.navigationController?.pushViewController(group, animated: true)
        }
        
  
    }
    

}
