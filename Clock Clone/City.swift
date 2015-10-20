//
//  City.swift
//  Clock Clone
//
//  Created by Andrew Christensen on 10/20/15.
//  Copyright © 2015 Drew. All rights reserved.
//

import UIKit

class City: NSObject {
    let city: String
    let country: String
    let CUTOffset: Float
    let inMain: Bool = false
    
    init(city: String, country: String, CUTOffset: Float)
    {
        self.city = city
        self.country = country
        self.CUTOffset = CUTOffset
    
        super.init()
    }
}
