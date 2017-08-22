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
    let BodyParts: [String] = ["Head","Neck","Chest","Abdomen","Legs","Arms"]
    let Educational: [String] = ["1","2","3"]
    let Economical: [String] = ["4","5","6"]
    let Psycological: [String] = ["a","b","c"]
    let Other: [String] = ["x","y","z"]
    var current: [String] = []
    var CurrentCategory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if CurrentCategory == "Medical" {
            current = BodyParts
        }
        else if CurrentCategory == "Educational" {
         current = Educational
        }
        else if CurrentCategory == "Economical" {
            current = Economical
        }
        else if CurrentCategory == "Psycological" {
            current = Psycological
        }
        
        
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return current.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentCategoryCell", for: indexPath)
        cell.textLabel?.text = current[indexPath.row]
        return cell

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CurrentCategoryToDetails" {
            let destination = segue.destination as!  DetailsViewController  // change to actual name of VC
            let index = tableView.indexPathForSelectedRow?.row
            let selectedDetail = current[index!]
            destination.CurrentCategory = selectedDetail // set to variable created in actual VC
            
        }
        
    }
}
