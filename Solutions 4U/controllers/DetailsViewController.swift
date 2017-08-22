//
//  DetailsViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/19/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit

class DetailsViewController: UITableViewController {
    let HeadDetail: [String] = ["Scalp","Face","Eyes","Ears","Nose","mouth"]
//  let NeckDetail: [String] = ["Front" , "Back" , "Left" , "Right"]
//  let ChestDetail: [String] = []
//  let AbdomenDetail: [String] = []
//  let LegsDetail: [String] = []
//  let ArmsDetail: [String] = []
    let EducationalDetail1: [String] = ["1","11","111"]
    let EducationalDetail2: [String] = ["2","22","222"]
    let EducationalDetail3: [String] = ["3","33","333"]
    let EconomicalDetail: [String] = ["44","55","66"]
    let PsycologicalDetail: [String] = ["aa","bb","cc"]
    let OtherDetail: [String] = ["xx","yy","zz"]
    var current: [String] = []
    var CurrentCategory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    if CurrentCategory == "Head" { current = HeadDetail }
//      else if CurrentCategory == "Neck" { current = NeckDetail }
//      else if CurrentCategory == "Chest" { current = ChestDetail }
//      else if CurrentCategory == "Abdomen" { current = AbdomenDetail }
//      else if CurrentCategory == "Legs" { current = LegsDetail }
//      else if CurrentCategory == "Arms" { current = ArmsDetail }
    if CurrentCategory == "1" { current = EducationalDetail1 }
        else if CurrentCategory == "2" { current = EducationalDetail2 }
        else if CurrentCategory == "3" { current = EducationalDetail3 }
    if CurrentCategory == "4" { current = EconomicalDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
    if CurrentCategory == "a" { current = PsycologicalDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
    if CurrentCategory == "x" { current = OtherDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
//        else if CurrentCategory == "Neck" { current = NeckDetail }
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return current.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell2", for: indexPath)
        cell.textLabel?.text = current[indexPath.row]
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsToSpecific" {
            let destination = segue.destination as!  SpecificDetailViewController // change to actual name of VC
            let index = tableView.indexPathForSelectedRow?.row
            let selectedDetail = current[index!]
            destination.CurrentCategory = selectedDetail // set to variable created in actual VC
            
        }
        
    }

    
 
    
}
