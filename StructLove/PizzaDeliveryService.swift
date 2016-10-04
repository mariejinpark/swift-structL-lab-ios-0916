//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location:Coordinate) {
        self.location = location
         pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        if self.location.distance(to: destination) <= 5000 {
            return true
        } else {
            return false
        }
    }

    mutating func deliverPizza(to destination:Coordinate) -> Bool {
        
        var canDeliver: Bool
        
        if isInRange(to: destination) {
            
            if pizzasAvailable == 0 {
                canDeliver = false
            } else {
                pizzasAvailable -= 1
                canDeliver = true
            }
            
        } else {
            canDeliver = false
        }
        
        return canDeliver
    }

}
