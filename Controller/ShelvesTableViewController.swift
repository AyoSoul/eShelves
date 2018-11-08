//
//  ShelvesTableViewController.swift
//  eShelves
//
//  Created by Ayo Soul on Mac on 13/10/2018.
//  Copyright © 2018 Ayo Soul on Mac. All rights reserved.
//

import UIKit
import Firebase

class ShelvesTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var shelvesTableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the shelvesTableViewController to be the delegate and the datasource
        shelvesTableViewController.delegate = self
        shelvesTableViewController.dataSource = self
        
    }
    
    // Declare cell for row at index path method
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
}
