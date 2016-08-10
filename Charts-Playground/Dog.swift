//
//  Dog.swift
//  Charts-Playground
//
//  Created by Fredrik Larsson on 2016-08-10.
//  Copyright © 2016 Fredrik Larsson. All rights reserved.
//

import Foundation
import RealmSwift

class Dog: Object {
    dynamic var id: String = NSUUID().UUIDString
    dynamic var name: String = ""
    var weights = List<Weight>()
    
    //Single dog
    func initSingleDog() -> Dog{
        let dog = Dog()
       
        //Add some weights to dog object
        let list = List<Weight>()
        for _ in 1...5 {
            let weight = Weight()
            weight.weight = Int(arc4random_uniform(30) + 1)
            list.append(weight)
        }
        
        dog.name = "Lassie"
        dog.weights = list
        return dog
    }
    
    func getSingleDogWeight(dog: Dog) -> [Int]{
        var weights = [Int]()
        for wd in dog.weights{
            weights.append(wd.weight)
        }
        return (weights)
    }
    
    
    
    //Multiple dogs
    func initMultipleDogs() -> [Dog]{
        var dogs = [Dog]()
        
        //Create 3 dogs
        for _ in 1...3 {
            let dog = Dog()
            let list = List<Weight>()
            
            //Create 5 weights per dog
            for _ in 1...5 {
                let weight = Weight()
                weight.weight = Int(arc4random_uniform(30) + 1)
                list.append(weight)
            }
            dog.weights = list
            dogs.append(dog)
        }
        
        return dogs
        
    }
    
    
    func getMultipleDogWeights(dogs: [Dog]) -> [[Int]]{
        var weightArray = [[Int]]()
        for dog in dogs {
            var weights = [Int]()
            
            for w in dog.weights {
                weights.append(w.weight)
            }
            weightArray.append(weights)
        }
        return weightArray
    }    
}




class Weight: Object{
    dynamic var weight: Int = 0
}
