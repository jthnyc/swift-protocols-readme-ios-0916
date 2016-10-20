//: Playground - noun: a place where people can play

import UIKit

/*
 3 steps to setup Protocol:
    1. declare protocol (make the promise?)
    2. adopt protocol in the class
    3. conform to the protocol -- provide the properties/methods required by the protocol

 NB: Protocol names are always capitalized
 
*/

protocol TextDescription {
    var textDescription: String { get }
}


class Person: TextDescription {
    var name: String
    var height: Double
    var favoriteFood: String
    
    var textDescription: String {
        return "Name: \(self.name) \nHeight: \(self.height) \nFavorite Food: \(self.favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
    
}

class Building: TextDescription {
    var address: String
    var height: Double
    var textDescription: String {
        return "Address: \(self.address) \nHeight: \(self.height)"
    }
    
    init(address: String, height: Double) {
        self.address = address
        self.height = height
    }
}


var Jerry = Person(name: "Jerry Mouse", height: 0.1, favoriteFood: "Cheese")
print(Jerry.textDescription)













protocol PrettyDescription {
    
    var description: String { get }
    
}



class Animal {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let prettyThings: [PrettyDescription] = []

for prettyThing in prettyThings {
    
    print(prettyThing.description)
    
}


