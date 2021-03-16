//
//  StudentCollection.swift
//  classroom-tracker-v3
//
//  Created by Brian Schott on 3/10/21.
//

import Foundation
import CoreData

class StudentCollection {
    var container: NSPersistentContainer!
    var studentList: [Student]  = []
    var studentListCoreData: [NSManagedObject] = []
        
    static let sharedInstance = StudentCollection()
    
    init() {
        container = NSPersistentContainer(name: "classroom_tracker_v3")
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                print("Unresolved error \(error)")
            }
        }
    }
    
    func save(student: Student) {
        let managedContext = container.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "StudentData", in: managedContext)!
        
        let studentObj = NSManagedObject(entity: entity, insertInto: managedContext)
        
        studentObj.setValue(student.studentName, forKeyPath: "name")
        studentObj.setValue(student.id, forKeyPath: "id")
        studentObj.setValue(student.grade, forKeyPath: "grade")
        studentObj.setValue(student.section, forKeyPath: "section")
        
        do {
            try managedContext.save()
            studentList.append(student)
          } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
          }
    }
    
    func createRecord() {

    }
    //should get the data from CoreData, update the studentList instance variable, and return it
    func readStudentList() -> [Student] {
        return studentList
    }
    
    func saveContext() {
        if container.viewContext.hasChanges {
            do {
                try container.viewContext.save()
            } catch {
                print("An error occurred while saving: \(error)")
            }
        }
    }
    
    
    
}
