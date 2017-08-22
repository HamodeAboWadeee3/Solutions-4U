//
//  CategoryTableViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/18/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit

class CategoryTableViewController: UITableViewController {
    let category:[String] = ["Medical", "Educational","Social","Economical","Psycological","Other"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
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
            destination.CurrentCategory = selectedCategory // set to variable created in actual VC
            
        }
        
    }
}
