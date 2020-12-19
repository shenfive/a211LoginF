//
//  ViewController.swift
//  a211LoginF
//
//  Created by 申潤五 on 2020/12/19.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    
//    // Swift override func viewDidLoad() { super.viewDidLoad()
//    if let token = AccessToken.current,
//           !token.isExpired {
//    // User is logged in, do work such as go to next view controller. } }
        
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        loginButton.permissions = ["public_profile", "email"]
        view.addSubview(loginButton)
        
        if let token = AccessToken.current, !token.isExpired{
            print("己登入")
        }else{
            print("己登出")
        }
        
        
        // Do any additional setup after loading the view.
    }

    
    // Swift // // Extend the code sample from 6a.Add Facebook Login to Your Code // Add to your viewDidLoad method:
    
}

