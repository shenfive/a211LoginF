//
//  ViewController.swift
//  a211LoginF
//
//  Created by 申潤五 on 2020/12/19.
//

import UIKit
import FBSDKLoginKit
import FirebaseAuth

class ViewController: UIViewController, LoginButtonDelegate {

    
    
    
    
    @IBOutlet weak var theButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton(frame: theButton.bounds)
        loginButton.permissions = ["public_profile", "email"]
        theButton.addSubview(loginButton)
        
        loginButton.delegate = self
        
        
        
        if let token = AccessToken.current, !token.isExpired{
            print("己登入")
        }else{
            print("己登出")
        }
        
        
        // Do any additional setup after loading the view.
    }

    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
        Auth.auth().signIn(with: credential) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
        }
        
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
    
    

}

