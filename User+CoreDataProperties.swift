//
//  User+CoreDataProperties.swift
//  CoreDataLesson
//
//  Created by Ольга Егорова on 26.07.2022.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var isMain: Bool
    @NSManaged public var anyBool: Bool
    @NSManaged public var company: Company?

}

extension User : Identifiable {

}
