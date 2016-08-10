//
//  Dog.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import UIKit
import RealmSwift

class Dog: Object {
    dynamic var name = ""
    dynamic var age = 0
}

import RealmSwift
class Create{
    
    // Use them like regular Swift objects
    let myDog = Dog()
    
    // Get the default Realm
    let realm = try! Realm()
    
    // Query Realm for all dogs less than 2 years old

    
    // Persist your data easily
    try! realm.write {
    realm.add(myDog)
    }
    

}
