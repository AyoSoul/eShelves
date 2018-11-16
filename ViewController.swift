//
//  ViewController.swift
//  eShelves
//
//  Created by Ayo Soul on Mac on 15/09/2018.
//  Copyright © 2018 Ayo Soul on Mac. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    //  iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii

    override func viewDidLoad() {
        /*
        if(Auth.auth().isSignIn(withEmailLink: "e@f.com")){
            // Go to goToShelvesTableView
            print("-----Logged in -------")
//            self.performSegue(withIdentifier: "goToShelvesTableView", sender: self)
        }else{
            print("-----Not logged in -------")
            self.performSegue(withIdentifier: "goToShelvesTableView", sender: self)
        }
        */
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
}

