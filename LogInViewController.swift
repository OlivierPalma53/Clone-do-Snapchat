//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBAction func signIn(sender: AnyObject) {
        if username == "" && password == "" {
            
        } else {
            
            PFUser.logInWithUsernameInBackground(username.text!, password: password.text!) { (user: PFUser?, error: NSError?) -> Void in
                
            }

            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

