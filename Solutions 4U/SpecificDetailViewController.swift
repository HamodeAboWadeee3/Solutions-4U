//
//  SpecificDetailViewController.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/21/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class SpecificDetailViewController: UITableViewController {
  //HeadDetail
//  let ScalpDetail: [String] = ["Headache","Hearing voices","Agitation"]
//  let FaceDetail: [String] = ["Face problem 1" , "Face problem 2"]
//  let EyesDetail: [String] = ["Eyes problem 1" , "Eyes problem 2"]
//  let EarsDetail: [String] = ["Ears problem 1" , "Ears problem 2"]
//  let NoseDetail: [String] = ["Nose problem 1" , "Nose problem 2"]
//  let MouthDetail: [String] = ["Mouth problem 1" , "Mouth problem 2"]
  //NeckDetail
//  let FNeckDetail: [String] = ["Front problem 1" , "Front problem 2"]
//  let BNeckDetail: [String] = ["Back problem 1" , "Back problem 2"]
//  let LNeckDetail: [String] = ["Left problem 1" , "Left problem 2"]
//  let RNeckDetail: [String] = ["Right problem 1" , "Right problem 2"]
//  //ChestDetail
//  let ChestDetail: [String] = ["Chest problem 1" , "Chest problem 2"]
//  let SternumDetail: [String] = ["Sternum problem 1" , "Sternum problem 2"]
//  let LateralChestDetail: [String] = ["Lateral Chest problem 1" , "Lateral Chest problem 2"]
//  //AbdomenDetail
//  let UpperAbdomenDetail: [String] = ["Upper Abdomen problem 1" , "Upper Abdomen problem 2"]
//  let LowerAbdomenDetail: [String] = ["Lower Abdomen problem 1" , "Lower Abdomen problem 2"]
//  //LegsDetail
//  let ThighDetail: [String] = ["Thigh problem 1" , "Thigh problem 2"]
//  let KneeDetail: [String] = ["Knee problem 1" , "Knee problem 2"]
//  let ShinDetail: [String] = ["Shin problem 1" , "Shin problem 2"]
//  let AnkleDetail: [String] = ["Ankle problem 1" , "Ankle problem 2"]
//  let FootDetail: [String] = ["Foot problem 1" , "Foot problem 2"]
//  let ToesDetail: [String] = ["Toes problem 1" , "Toes problem 2"]
//  //ArmsDetail
//  let ShoulderDetail: [String] = ["Shoulder problem 1" , "Shoulder problem 2"]
//  let ArmpitDetail: [String] = ["Armpit problem 1" , "Armpit problem 2"]
//  let UpperArmDetail: [String] = ["UpperArm problem 1" , "UpperArm problem 2"]
//  let ElbowDetail: [String] = ["Elbow problem 1" , "Elbow problem 2"]
//  let ForeArmDetail: [String] = ["ForeArm problem 1" , "ForeArm problem 2"]
//  let WristDetail: [String] = ["Wrist problem 1" , "Wrist problem 2"]
//  let PalmDetail: [String] = ["Palm problem 1" , "Palm problem 2"]
//  let FingersDetail: [String] = ["Fingers problem 1" , "Fingers problem 2"]
//    
//      let EducationalDetail: [String] = ["111","222","333"]
//      let EconomicalDetail: [String] = ["444","555","666"]
//      let PsycologicalDetail: [String] = ["aaa","bbb","ccc"]
//      let OtherDetail: [String] = ["xxx","yyy","zzz"]
    
      var current: [String] = []
      var CurrentCategory: String?
      var path3: String?
         
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference(withPath: path3!)
        ref.observeSingleEvent(of: .value, with: {(snapshot) in
            let snapshotVal = snapshot.value as![String : Any]
            
            for item1 in snapshotVal.keys {
                self.current.append(item1)
            }
            self.tableView.reloadData()
        })
//    //Head Probabilities
//    if CurrentCategory == "Scalp" { current = ScalpDetail }
//      else if CurrentCategory == "Face" { current = FaceDetail }
//      else if CurrentCategory == "Eyes" { current = EyesDetail }
//      else if CurrentCategory == "Ears" { current = EarsDetail }
//      else if CurrentCategory == "Nose" { current = NoseDetail }
//      else if CurrentCategory == "Mouth" { current = MouthDetail }
//    //Neck Probabilities
//    if CurrentCategory == "Front" { current = FNeckDetail }
//      else if CurrentCategory == "Back" { current = BNeckDetail }
//      else if CurrentCategory == "Left" { current = LNeckDetail }
//      else if CurrentCategory == "Right" { current = RNeckDetail }
//    //Chest Probabilities
//    if CurrentCategory == "Chest" { current = ChestDetail }
//      else if CurrentCategory == "Sternum" { current = SternumDetail }
//      else if CurrentCategory == "Lateral Chest" { current = LateralChestDetail }
//     //Abdomen Probabilities
//    if CurrentCategory == "Upper Abdomen" { current = UpperAbdomenDetail }
//      else if CurrentCategory == "Lower Abdomen" { current = LowerAbdomenDetail }
//     //Legs Probabilities
//    if CurrentCategory == "Thigh" { current = ThighDetail }
//      else if CurrentCategory == "Knee" { current = KneeDetail }
//      else if CurrentCategory == "Shin" { current = ShinDetail }
//      else if CurrentCategory == "Ankle" { current = AnkleDetail }
//      else if CurrentCategory == "Foot" { current = FootDetail }
//      else if CurrentCategory == "Toes" { current = ToesDetail }
//     //Arms Probabilities
//    if CurrentCategory == "Shoulder" { current = ShoulderDetail }
//      else if CurrentCategory == "Armpit" { current = ArmpitDetail }
//      else if CurrentCategory == "UpperArm" { current = UpperArmDetail }
//      else if CurrentCategory == "Elbow" { current = ElbowDetail }
//      else if CurrentCategory == "ForeArm" { current = ForeArmDetail }
//      else if CurrentCategory == "Wrist" { current = WristDetail }
//      else if CurrentCategory == "Palm" { current = PalmDetail }
//      else if CurrentCategory == "Fingers" { current = FingersDetail }
        
//        else if CurrentCategory == "11" { current = EducationalDetail }
//        else if CurrentCategory == "44" { current = EconomicalDetail }
//        else if CurrentCategory == "aa" { current = PsycologicalDetail }
//        else if CurrentCategory == "xx" { current = OtherDetail }
        
        
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
            let destination = segue.destination as!  Solutions
            let index = tableView.indexPathForSelectedRow?.row
            let selectedCategory = current[index!]
            destination.CurrentCategory = selectedCategory // set to variable created in actual VC
            destination.path4 = path3! + "/"  + selectedCategory   + "/Solutions"
                      
        }
        
    }

    
    
    
}
