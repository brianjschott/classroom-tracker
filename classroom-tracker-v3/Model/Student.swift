//
//  Student.swift
//  classroom-tracker
//
//  Created by admin on 4/27/20.
//  Copyright © 2020 CGPS. All rights reserved.
//

import Foundation

class Student: Codable {
    
    var id: String = ""
    var studentName: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var grade: Int = 0
    var section: Int = 0
    var assessmentsTaken: [String] = [] //list of document IDs
    
    init(id: String, studentName: String) {
        self.id = id
        self.studentName = studentName;
    }
    
    init(id: String, firstName: String, lastName: String, grade: Int, assessmentsTaken: [String]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.assessmentsTaken = assessmentsTaken
    }
    
    
}
    
