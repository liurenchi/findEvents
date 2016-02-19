//
//  AppDelegate.swift
//  findEvents
//
//  Created by  Lrcray on 16/2/19.
//  Copyright © 2016年  Lrcray. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        
        let tabbar = UITabBarController()
        
        let Events = EventsViewController()
        let event_nav = UINavigationController(rootViewController: Events)
        event_nav.tabBarItem.title = "Events"
        event_nav.tabBarItem.image = UIImage(named: "events")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        //imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal) 不需要图标全亮删去这个
        
        let Tickets = TicketsViewController()
        Tickets.tabBarItem.title = "Tickets"
        Tickets.tabBarItem.image = UIImage(named: "tickets")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        let Chats = ChatsViewController()
        let chat_nav = UINavigationController(rootViewController: Chats)
        chat_nav.tabBarItem.title = "Chats"
        chat_nav.tabBarItem.image = UIImage(named: "chats")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        
        let ID = IDViewController()
        ID.tabBarItem.title = "ID"
        ID.tabBarItem.image = UIImage(named: "ID")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        let controllers = NSArray(objects:event_nav,Tickets,chat_nav,ID)
        tabbar.viewControllers = controllers as? [UIViewController]
        
        //-背景色
        
        self.window?.rootViewController = tabbar
        
        self.window?.makeKeyAndVisible()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

