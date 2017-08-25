//
//  CategoryTableViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/18/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class CategoryTableViewController: UITableViewController {
    var category:[String] = []//["Medical","Educational","Economical","psychological","Social","Other"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference(withPath: "/Problems/Problems")
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let snapshotVal = snapshot.value as!  [String: Any]
            
            
            for item in snapshotVal.keys {
            self.category.append(item)
            }
            self.tableView.reloadData()
        })
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        cell.textLabel?.text = category[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "categoryToCurrent" {
            let destination = segue.destination as!  CurrentCategoryViewController // change to actual name of VC
            let index = tableView.indexPathForSelectedRow?.row
            let selectedCategory = category[index!]
            destination.CurrentCategory =  selectedCategory // set to variable created in actual VC
                destination.path = "/Problems/Problems/" + selectedCategory
            
        }
        
    }
}
