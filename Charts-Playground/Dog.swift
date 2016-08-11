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
        for i in 1...3 {
            let dog = Dog()
            let list = List<Weight>()
            
            if i == 1{
                //Create 5 weights per dog
                for i in 1...5 {
                    let weight = Weight()
                    switch i {
                    case 1:
                        weight.weight = 1
                    case 2:
                        weight.weight = 3
                    case 3:
                        weight.weight = 6
                    case 4:
                        weight.weight = 5
                    case 5:
                        weight.weight = 8
                    default:
                        0
                    }
                    list.append(weight)
                }
                dog.name = "Sture"
            }
            else if i == 2{
                //Create 5 weights per dog
                for i in 1...5 {
                    let weight = Weight()
                    switch i {
                    case 1:
                        weight.weight = 0
                    case 2:
                        weight.weight = 2
                    case 3:
                        weight.weight = 3
                    case 4:
                        weight.weight = 3
                    case 5:
                        weight.weight = 6
                    default:
                        0
                    }
                    list.append(weight)
                }
                dog.name = "Bengt"
            }
            else if i == 3{
                //Create 5 weights per dog
                for i in 1...5 {
                    let weight = Weight()
                    switch i {
                    case 1:
                        weight.weight = 2
                    case 2:
                        weight.weight = 3
                    case 3:
                        weight.weight = 6
                    case 4:
                        weight.weight = 6
                    case 5:
                        weight.weight = 7
                    default:
                        0
                    }
                    list.append(weight)
                }
                dog.name = "Ragnar"
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
    
    func getDogs(dogs: [Dog]) -> [Dog]{
        return dogs
    }
    
    func getDog(dog: Dog) -> Dog{
        return dog
    }
}




class Weight: Object{
    dynamic var weight: Int = 0
}
