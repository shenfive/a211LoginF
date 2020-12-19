//
//  ViewController.swift
//  a211LoginF
//
//  Created by 申潤五 on 2020/12/19.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        
        // Do any additional setup after loading the view.
    }


}

