//
//  SignUpViewController.swift
//  Snapchat
//
//  Created by Olivier Palma on 05/01/16.
//  Copyright © 2016 Parse. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBAction func signUp(sender: AnyObject) {
        
        let user = PFUser()
        user.username = username.text
        user.email = email.text
        user.password = password.text
        
        user.saveInBackgroundWithBlock { (suceded, error) -> Void in
            
            if let error = error{
                
                if let errorString = error.userInfo["error"] as? NSString {
                    
                    self.alertDialog("Falha ao cadastrar", message: "Tente Novamente")
                    
                }

                
            } else {
                
            }
            
        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    func alertDialog (title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
