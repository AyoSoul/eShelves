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
        
        //  Set yourself as the delegate of the text field here:
        //  Set the tapGesture here
        
        //  Register your .xib file here
        
            shelvesTableViewController.register(UINib(nibName: "CustomTableViewCell1", bundle: nil), forCellReuseIdentifier: "customTableViewCell1")
        
    }
    
    
    
    
    // Declare cell for row at index path method
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell1", for: indexPath) as! CustomTableViewCell1
        
        let bkNameArray = ["Wars", "Fantasy Novel", "Blue Shelves", "History of the World", " Famous Artist and Works", "unknown Genre"]
        let bkNoOfBooksArray = ["3440", "1234", "122", "12000", "777", "678"]
        let bkLocationArray = ["Top Floor", "Top Floor Beh", "Basement", "Living Room", "Downstairs", "Kitchen"]
        
        cell.bookcaseName.text = bkNameArray[indexPath.row]
        cell.bookcaseNoOfBooks.text = bkNoOfBooksArray[indexPath.row]
        cell.bookcaseLocation.text = bkLocationArray[indexPath.row]
        
        return cell
    }
    
    //  Declare number of rows in selection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
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
