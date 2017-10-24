//
//  TDLoginVC.swift
//  TaskDemo
//
//  Created by Amit on 24/10/2015 SAKA.
//  Copyright © 2017 Dream World. All rights reserved.
//

import UIKit

class TDLoginVC: UIViewController {

    @IBOutlet weak var userNameTextField:UITextField!
    @IBOutlet weak var userPasswordTextField:UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        userNameTextField.text = ""
        userPasswordTextField.text = ""
    }
    @IBAction func loginAction(sender: AnyObject) {
        let (status,message) = TDCommonMethod.validateNameWithString(name: (userNameTextField.text?.trim())!, withIdentifier: "UserName")
        let (status1,message1) = TDCommonMethod.validateNameWithString(name: (userPasswordTextField.text?.trim())!, withIdentifier: "UserPassword")
        if status {
            if status1 {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: StoryboardIdentifier.TDHomeVC.rawValue) as! TDHomeVC
                TDCommonMethod.setLoginUserInfoInDefault(userName: userNameTextField.text!)
                self.present(vc, animated: true, completion: nil)
            } else {
                let alert = UIAlertController(title: "Alert", message: message1, preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
        } else {
            let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
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
