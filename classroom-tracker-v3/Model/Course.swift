//
//  Course.swift
//  classroom-tracker
//
//  Created by admin on 4/27/20.
//  Copyright © 2020 CGPS. All rights reserved.
//

import Foundation


class Course: Codable {
    var id: String
    var courseName: String?
    var numSections: Int?
    var studentList: [Student]
    
    init(id: String, courseName: String, numSections: Int) {
        self.id = id
        self.courseName = courseName
        self.numSections = numSections
        self.studentList = [Student]()
    }
   
    
}
