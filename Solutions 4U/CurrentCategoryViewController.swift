//
//  CurrentCategoryViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/18/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//
import Foundation
import UIKit


class CurrentCategoryViewController: UITableViewController {
    let parts: [String] = ["Head","Neck","Chest","Abdomen","Legs","Arms"]
    let Eductional: [String] = ["1","2","3"]
    let Economical: [String] = ["4","5","6"]
    let Psycological: [String] = ["a","b","c"]
    let Other: [String] = ["x","y","z"]
    var current: [String] = []
    var currentCategory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if currentCategory == "Medical"{
            current = parts
        }
        else if currentCategory == "Educational" {
         current = Eductional
        }
        else if currentCategory == "Economical" {
            current = Economical
        }
        else if currentCategory == "Psycological" {
            current = Psycological
        }
        
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return current.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Parts", for: indexPath)
        cell.textLabel?.text = current[indexPath.row]
        return cell
       
        
   
      
    
    }}
