//
//  SpecificDetailViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/21/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit

class SpecificDetailViewController: UITableViewController {
  let SpecificScalpDetail: [String] = ["Headache","Hearing voices"]
  let SpecificFaceDetail: [String] = ["Face problem"]
  let SpecificEyesDetail: [String] = ["Eyes problem"]
  let SpecificEarsDetail: [String] = ["Ears problem"]
  let SpecificNoseDetail: [String] = ["Nose problem"]
  let SpecificMouthDetail: [String] = ["Mouth problem"]
    let SpecificNeckDetail: [String] = ["Cough"]
      let SpecificEducationalDetail: [String] = ["111","222","333"]
      let SpecificEconomicalDetail: [String] = ["444","555","666"]
      let SpecificPsycologicalDetail: [String] = ["aaa","bbb","ccc"]
      let SpecificOtherDetail: [String] = ["xxx","yyy","zzz"]
      var current: [String] = []
      var CurrentCategory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    if CurrentCategory == "Scalp" { current = SpecificScalpDetail }
      else if CurrentCategory == "Face" { current = SpecificFaceDetail }
      else if CurrentCategory == "Eyes" { current = SpecificEyesDetail }
      else if CurrentCategory == "Ears" { current = SpecificEarsDetail }
      else if CurrentCategory == "Nose" { current = SpecificNoseDetail }
      else if CurrentCategory == "Mouth" { current = SpecificMouthDetail }
        if CurrentCategory == "Front" { current = SpecificNeckDetail }
        else if CurrentCategory == "11" { current = SpecificEducationalDetail }
        else if CurrentCategory == "44" { current = SpecificEconomicalDetail }
        else if CurrentCategory == "aa" { current = SpecificPsycologicalDetail }
        else if CurrentCategory == "xx" { current = SpecificOtherDetail }
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return current.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpecificDetailCell", for: indexPath)
        cell.textLabel?.text = current[indexPath.row]
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SpecificToSolution" {
            let destination = segue.destination as!  Solutions // change to actual name of VC
            let index = tableView.indexPathForSelectedRow?.row
            let selectedDetail = current[index!]
            destination.CurrentCategory = selectedDetail  // set to variable created in actual VC
            
        }
        
    }

    
    
    
}
