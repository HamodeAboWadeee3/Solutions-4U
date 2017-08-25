//
//  Solutions.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/21/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class Solutions: UITableViewController {
    //Scalp Problems
//    let HeadacheSolution: [String] = ["You are :",
//                                        "80-100 % suffering from :  Tension headache",
//                                        "60-80 % suffering from : Caffeine withdrawal",
//                                        "40-60 % suffering from : Thalassemia",
//                                        "20-40 % suffering from : Typhoid fever",
//                                        "0-20 % suffering from : West nile virus" ]
//    let HearingVoicesSolution: [String] = ["You are :",
//                                      "80-100 % suffering from :  ",
//                                      "60-80 % suffering from : ",
//                                      "40-60 % suffering from : ",
//                                      "20-40 % suffering from : ",
//                                      "0-20 % suffering from : " ]
//
//    let SpecificEducationalDetail: [String] = ["1111","2222","3333"]
//    let SpecificEconomicalDetail: [String] = ["4444","5555","6666"]
//    let SpecificPsycologicalDetail: [String] = ["aaaa","bbbb","cccc"]
//    let SpecificOtherDetail: [String] = ["xxxx","yyyy","zzzz"]
    
    var current: [String: Any] = [:]
    var CurrentCategory: String?
    var path4: String?
    
        override func viewDidLoad() {
            super.viewDidLoad()
            let ref = Database.database().reference(withPath: path4!)
            ref.observeSingleEvent(of: .value, with: {(snapshot) in
                let snapshotVal = snapshot.value as! [String : Any]
                self.current = snapshotVal
                
                self.tableView.reloadData()
            })

//            //Scalp Solutions
//            if CurrentCategory == "Headache"{ current = HeadacheSolution }
//            else if CurrentCategory == "Hearing voices"{ current = HearingVoicesSolution }
//            else if CurrentCategory == "111" { current = SpecificEducationalDetail }
//            else if CurrentCategory == "444" { current = SpecificEconomicalDetail }
//            else if CurrentCategory == "aaa" { current = SpecificPsycologicalDetail }
//            else if CurrentCategory == "xxx" { current = SpecificOtherDetail }
    
    
        }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return current.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SolutionCell", for: indexPath)
        let key = Array(current.keys)[indexPath.row]
        let Solution = current[key] as! [String: String]
        let name = Solution["name"]
        let percentage = Solution["percentage"]
        cell.textLabel?.text = name! + ": " +  percentage!
        return cell
        
    }
    

   

}
