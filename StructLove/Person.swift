//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool

    init(firstName:String, lastName:String, home:Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        isHungry = true
    }
    
    mutating func eatPizza(from service:PizzaDeliveryService) -> Bool {
//        if isHungry == true && service.isInRange(to: home) == true {
//            isHungry == false
//            return true
//        } else if isHungry == false && !service.isInRange(to: home) == false {
//            return false
//        }
//        return false
        
        var canEat: Bool
        
        if service.isInRange(to: home) {
            if isHungry {
                canEat = true
                isHungry = false
            } else {
                canEat = false
            }
            
        } else {
            canEat = false
        }
        return canEat
    }

}
