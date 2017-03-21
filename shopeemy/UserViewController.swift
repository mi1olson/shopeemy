//
//  UserViewController.swift
//  shopeemy
//
//  Created by iColson on 02/03/2017.
//  Copyright © 2017 Colson. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {


    @IBOutlet weak var signupUser: UIView!
    
    @IBOutlet weak var loginUser: UIView!

    @IBAction func switchButton(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
            case 0 :
                signupUser.isHidden = false
                loginUser.isHidden = true
            case 1 :
                signupUser.isHidden = true
                loginUser.isHidden  = false
            default:
                break;
        }
        
     }
    

    
    @IBAction func cancelLogin(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelSignUp(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
    
}
