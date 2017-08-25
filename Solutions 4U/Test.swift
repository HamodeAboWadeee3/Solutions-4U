//
//  Test.swift
//  Solutions 4U
//
//  Created by Mohamad Mazen AlQaisyeh on 8/25/17.
//  Copyright © 2017 Mohamad Mazen AlQaisyeh. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class test: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 1 Media Data in memory
    let data = Data()
    let storageRef = Database.database().reference().child("storage")
    
    // 2 Create a reference to the file you want to upload
    //  let riversRef = storageRef.child("images/rivers.jpg")
    
    // 3 Upload the file to the path "images/rivers.jpg"
    // let uploadTask = riversRef.putData(data, metadata: nil) { (metadata, error) in
    //   guard let metadata = metadata else {
    //     // 4 Uh-oh, an error occurred!
    //   return
    //}
    // 5 Metadata contains file metadata such as size, content-type, and download URL.
    // let downloadURL = metadata.downloadURL
    //}
}
