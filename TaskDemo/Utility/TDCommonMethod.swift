//
//  TDCommonMethod.swift
//  TaskDemo
//
//  Created by Amit on 24/10/2015 SAKA.
//  Copyright © 2017 Dream World. All rights reserved.
//

import UIKit
class TDCommonMethod {

    class func validateNameWithString(name:String, withIdentifier:String)->(Bool,String){
        
        if (name.isEmpty || name.length == 0) {
            let str = String(format: "please enter %@", withIdentifier)
            return (false,str)
        }
        
        if name.length < 4 {
            let str = String(format: "%@ can contain atleast 4 characters", withIdentifier)
            return (false,str)
        }
        
        let nameRegex:String = "[a-zA-Z0-9_.@ ]+$"
        let nameTest:NSPredicate = NSPredicate(format:"SELF MATCHES %@",nameRegex)
        if !nameTest .evaluate(with: name){
            let str = String(format: "please enter valid %@", withIdentifier)
            return (false,str)
        }
        return (true,"")
    }

    class func setLoginUserInfoInDefault(userName:String) {
    TDConstant.defaults.set(userName, forKey: "userName")
}
    class func clearLoginUserInfoOnLogout() {
        TDConstant.defaults.set("", forKey: "userName")
    }
}
