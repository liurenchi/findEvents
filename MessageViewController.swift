//
//  MessageViewController.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,UITextFieldDelegate  {

    
    var tableview = UITableView()
    var tableSource = []
    var people_name: String = ""
    
    
    //MARK: - 数据源
    

    
    
    
    
    
    // MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.people_name
        
        let message1 = MessageInfo(icon: self.people_name, talk: "  hi")
        let message2 = MessageInfo(icon: self.people_name, talk: "  hello")
        let message3 = MessageInfo(icon: self.people_name, talk: "  what's your name?")
        let message4 = MessageInfo(icon: self.people_name, talk: "  call me Lingfeng")
        let message5 = MessageInfo(icon: self.people_name, talk: "  great!")
        
        
        //tableview数据源
        self.tableSource = [message1, message2, message3, message4, message5]
        
        
        
        //tableview代理，自定义cell的注册
        self.tableview.dataSource = self
        self.tableview.delegate = self
        self.tableview.registerClass(MessageCell.self, forCellReuseIdentifier: MessageCell.reuseIdetifier())
        
        
        self.tableview.frame = CGRectMake(0, 10, self.view.frame.width, self.view.frame.height-200)
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        
        //输入框区域
        let inputview = UIView(frame: CGRectMake(0, self.view.frame.height-200, self.view.frame.width, 200 - 48))
        let backImg = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, 200 - 48))
        backImg.image = UIImage(named: "Rectangle 36")
        
        let slide_img = UIImageView(frame: CGRectMake(self.view.frame.width/2-40-50, 20, 50, 50))
        slide_img.image = UIImage(named: "slide")
        
        let speach_img = UIImageView(frame: CGRectMake(self.view.frame.width/2+40, 20, 50, 50))
        speach_img.image = UIImage(named: "Speach")
        
        let inputTextField = UITextField(frame: CGRectMake(15, self.view.frame.height-100, self.view.frame.width - 30, 38))
        inputTextField.delegate = self
        inputTextField.backgroundColor = UIColor.whiteColor()
        
        
        self.view.addSubview(self.tableview)
        inputview.addSubview(backImg)
        inputview.addSubview(slide_img)
        inputview.addSubview(speach_img)
        self.view.addSubview(inputview)
        self.view.addSubview(inputTextField)
        
    }


    // MARK: - tableview delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableSource.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return MessageCell.heightForCell()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(MessageCell.reuseIdetifier()) as! MessageCell
        
        //cell.backgroundColor = UIColor.redColor()
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
       
        //修正
        if indexPath.row%2 == 1 {
            let message = self.tableSource[indexPath.row] as! MessageInfo
            message.icon = "Lingfeng"
        }
        
        cell.setupMessageCell(self.tableSource.objectAtIndex(indexPath.row) as! MessageInfo)
        return cell
    }
    
    
    
    // MARK: - textField delegate
    func textFieldDidBeginEditing(textField: UITextField) {
        let frame:CGRect = textField.frame
        let offset = frame.origin.y+70 - (self.view.frame.height - 216)
        UIView.beginAnimations("resizeForKeyBoard", context: nil)
        UIView.setAnimationDuration(0.5)
        
        if(offset > 0){
        
            self.view.frame = CGRectMake(0.0, -offset, self.view.frame.size.width, self.view.frame.size.height)
            UIView.commitAnimations()
        }
    }
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        UIView.beginAnimations("dismissKeyBoard", context: nil)
        UIView.setAnimationDuration(0.1)
        self.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        UIView.commitAnimations()
        
        return true
    }
    


}
