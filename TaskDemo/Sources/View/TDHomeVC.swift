//
//  TDHomeVC.swift
//  TaskDemo
//
//  Created by Amit on 24/10/2015 SAKA.
//  Copyright © 2017 Dream World. All rights reserved.
//

import UIKit

class TDHomeVC: UIViewController {
    
    @IBOutlet weak var welcomeMessageLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = TDConstant.defaults.value(forKey: "userName") as! String
        welcomeMessageLabel.text = "You are logged in as \(str)"
        // Do any additional setup after loading the view.
    }
    @IBAction func logoutAction(sender: AnyObject) {
        TDCommonMethod.clearLoginUserInfoOnLogout()
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
