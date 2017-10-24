//
//  TDConstant.swift
//  TaskDemo
//
//  Created by Amit on 24/10/2015 SAKA.
//  Copyright © 2017 Dream World. All rights reserved.
//

import UIKit

class TDConstant {
    
    static let defaults           = UserDefaults.standard
    static let mainScreen         = UIScreen.main.bounds
    static let notifiactionCenter = NotificationCenter.default
    static let appDelegate        = UIApplication.shared.delegate as! TDAppDelegate
    static let storyBoard         : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    static let baseURL            = "h"
}
enum ServiceType : String {
    case AddUser       = "/Login/User"
}
enum StoryboardIdentifier : String {
    case TDLoginVC     = "TDLoginVC"
    case TDHomeVC      = "TDHomeVC"
}
struct ScreenSize {
    
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

